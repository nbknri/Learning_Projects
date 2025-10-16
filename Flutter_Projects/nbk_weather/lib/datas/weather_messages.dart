
import 'package:nbk_weather/datas/global_variabls.dart';

void weatherMessages(int temperature){
  if(temperature < 0){
    weatherMessage = "🥶 Brrr! It's freezing outside! Stay warm and cozy!";
  } else if(temperature >= 0 && temperature < 10){
    weatherMessage = "🔥 Fireplaces are now your best friend.";
  } else if (temperature >= 10 && temperature < 18) {
    weatherMessage = "☕ Keep calm and sip something warm.";
  } else if(temperature >= 18 && temperature < 25){
    weatherMessage = "🧃 Not too hot, not too cold — just juice it up!";
  } else if(temperature >= 25 && temperature < 30){
    weatherMessage = "🍹 Feels like a mocktail day!";
  } else if(temperature >= 30 && temperature < 40){
    weatherMessage = "🍦 Grab an ice cream… or maybe two.";
  } else {
    weatherMessage = "🥵 It's scorching outside! Seek shade and stay safe!";
  }
}