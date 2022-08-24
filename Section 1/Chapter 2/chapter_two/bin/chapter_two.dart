enum Weather { windy, cloudy, rainy, sunny }

void main() {
  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.rainy:
      print('Take An Umbrealla');
      break;
    case Weather.sunny:
      print('Take some Shades');
      break;
    case Weather.cloudy:
      print('It could Rain today');
      break;
    default:
      print('Cloudy With a ChanCE OF MEATBALLS');
  }


}
