from django.http import HttpResponse
from django.http import JsonResponse
from django.shortcuts import render
from my_sql_connect import database_fetch, json_html
from chart import chart_display
from chat.models import Chat
from aiml_try import aiml_generate
from lsa import lsa_fetch
from pre_process import preprocess_data
import aiml

aiml_handle = aiml.Kernel()
response_queue = ""
cant_answer_count = 0


def home(request):
    global aiml_handle
    Chat.objects.all().delete()
    aiml_generate(aiml_handle)
    print "in home successfull"
    chats = Chat.objects.all()
    ctx = {
        'home': 'active',
        'chat': chats
    }
    if request.user.is_authenticated:
        intro = "Welcome to KR food delivery. Order and eat Great food.Please Pick a Food Category"
        chat_message = Chat(user=request.user, message=intro, human_bot=False)
        chat_message.save()
        msg = "show me the categories"
        response = aiml_handle.respond(preprocess_data(msg))
        if response[0] == '@':
            result_list = database_fetch(response[1:])
            result = json_html(result_list)
        chat_message = Chat(user=request.user, message=result, human_bot=False)
        chat_message.save()
        return render(request, 'order_message.html', ctx)
    else:
        return render(request, 'base.html', None)


def post(request):
    global aiml_handle, response_queue, cant_answer_count
    if request.method == "POST":
        msg = request.POST.get('msgbox', None)
        print('Our value = ', msg)

        chat_message = Chat(user=request.user, message=msg, human_bot=True)
        if msg != '':
            chat_message.save()

        response = aiml_handle.respond(preprocess_data(msg))
        if response == '':
            response_queue = response_queue + " " + msg
            cant_answer_count = cant_answer_count + 1
            found = 0
            if cant_answer_count > 2:
                lsa_Keywords = lsa_fetch(response_queue)
                #print lsa_Keywords
                for keyword_Lsa in lsa_Keywords:
                    response = aiml_handle.respond(
                        preprocess_data("Lsa "+keyword_Lsa))
                    print ("Lsa = " + response)
                    if(response != ''):
                        found = 1
                        response_queue = ""
                        cant_answer_count = 0
                        break
            if found == 0:
                result = ":( Sorry , response Not Found Can you Elaborate !!!"

        if(response != ''):
            response_queue = ""
            cant_answer_count = 0
            result = response
            if response[0] == '@':
                result_list = database_fetch(response[1:])
                result = json_html(result_list)
            elif response[0] == '$':
                result = chart_display(response[1:])

        chat_message2 = Chat(
            user=request.user, message=result, human_bot=False)
        chat_message2.save()

        return JsonResponse({'msg': msg, 'user': chat_message.user.username})
    else:
        return HttpResponse('Request must be POST.')


def messages(request):
    chat = Chat.objects.all()
    return render(request, 'just_message_only.html', {'chat': chat})
