import speech_recognition as sr

r = sr.Recognizer()

with open("draft.txt", "a+") as f:
    while True:
        with sr.Microphone() as source:
            print("Listening...")

            try:
                audio = r.listen(source)
                recognized_text = r.recognize_google(audio)
                print(f"you said: {recognized_text}")

                words = recognized_text.split()
                for i in range(0, len(words), 5):
                    f.write(" ".join(words[i:i+5]) + "\n")

                if recognized_text.lower() == "ok bye":
                    print("Exiting...")
                    break

            except sr.UnknownValueError:
                print("Google could not understand your audio")
            except sr.RequestError as e:
                print(f"Google Speech Recognition error: {e}")