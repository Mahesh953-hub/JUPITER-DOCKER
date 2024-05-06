from pyrogram import Client, filters
from googletrans import Translator

translator = Translator()

bot = Client("bot", api_id=23636706, api_hash="569142e539afdf3b0739befbbcd8d8e2", bot_token="6663599882:AAF6tVyWapkLnwHcdURpuk_2I9l4K5ZlBS8")
@bot.on_message(filters.command("start"))
def start(client, message):
  message.reply(f"""**Welcome to google translator bot.** __Send me any text and i will translate it and send you.__
  
  --YOUR LANG CODE IS:-- **{message.from_user.language_code}**""")
@bot.on_message(filters.private)
def translate_message(client, message):
    chat_id = message.chat.id
    

    if message.text:
        text = message.text
        user_lang_code = message.from_user.language_code  # Kullanıcı dil kodunu burada belirleyin
        translation = translator.translate(text, dest=user_lang_code)
        translated_text = translation.text
        m = message.reply("**Translating...**")
        m.edit(f"**{translated_text}**")
    
    elif message.photo or message.video:
        caption = message.caption
        user_lang_code = message.from_user.language_code # Kullanıcı dil kodunu burada belirleyin
        translation = translator.translate(caption, dest=user_lang_code)
        translated_caption = translation.text
        m2 = message.reply("**Translating...**")
        m2.edit(f"**{translated_text}**")
print(">>Bot started!<")
bot.run();
