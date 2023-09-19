from pyrogram import Client, filters
from googletrans import Translator

translator = Translator()

bot = Client("bot", api_id=22414322, api_hash="d4ae0d06f838826fbcf1fa2dbe6b8f91", bot_token="5853168713:AAEoeb_d5051WVFGtjTDbEaIigBKeKxGq-w")
@bot.on_message(filters.command("start"))
def start(client, message):
  message.reply(f"""**Welcome to google translator bot.** __Send me any text and i will translate it and send you__
  
  --YOUR LANG CODE IS: **{message.from_user.language_code}**""")
@bot.on_message(filters.private)
def translate_message(client, message):
    chat_id = message.chat.id
    

    if message.text:
        text = message.text
        user_lang_code = message.from_user.language_code  # Kullanıcı dil kodunu burada belirleyin
        translation = translator.translate(text, dest=user_lang_code)
        translated_text = translation.text
        m = message.reply("**Translating...**")
        m.edit(chat_id, f"**{translated_text}**")
    
    elif message.photo or message.video:
        caption = message.caption
        user_lang_code = message.from_user.language_code # Kullanıcı dil kodunu burada belirleyin
        translation = translator.translate(caption, dest=user_lang_code)
        translated_caption = translation.text
        m = message.reply("**Translating...**")
        m.edit(chat_id, f"**{translated_text}**")
print(">>Bot started!<")
bot.run();
