import time
from plyer import notification
import requests

if __name__ == "__main__" :
	while True :
		# fetch data from api and store data in words variable
		words = requests.get("https://random-word-api.herokuapp.com/word/");
		# convert data into json format and store in word variable
		word = words.json()
		# using notify module from notification for giving notification
		notification.notify(
			title = "Lets learn a new Word",
			message = (word[0]),
			app_icon = "F:/random_word/icon/books_icon.ico",
			timeout = 10
		)
		# this programe run in every 30 minute (60 second or 1 minute * 30 times = 30 minute)
		# so every time its fetch new word from api
		time.sleep(60*30)

# created by Amit Barman