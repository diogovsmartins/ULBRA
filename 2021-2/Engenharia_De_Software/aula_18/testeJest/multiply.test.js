const multiply = require('./multiply');

test('Multiplica o numero 2 pelo 5 para devolver o numero 10', () => {
    expect(multiply(2, 5)).toBe(10);
  });