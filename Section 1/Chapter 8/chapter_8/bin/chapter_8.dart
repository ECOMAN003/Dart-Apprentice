void main(List<String> arguments) {
  print(desserts);
}

const pastries = ['cookies', 'croissants'];
const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
const desserts = ['donuts', ...pastries, ...candy];
