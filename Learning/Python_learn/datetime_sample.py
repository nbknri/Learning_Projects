import datetime

now = datetime.datetime.now()
print(now.strftime("%d.%m.%Y"))
print(now.strftime("%d/%m/%Y"))
print(datetime.date.today())
print(datetime.date.today().year)
print(datetime.date.today().month)
print(datetime.date.today().day)

x = datetime.datetime(day = 12,month=2, year=2025)
y = datetime.datetime(2025,2,1)
print(x)
print(y)
dif=x-y
print(dif)

end = datetime.datetime.now()
difference = end - now
print(difference)
