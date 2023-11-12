import 'package:flutter/material.dart';

class MinhasInf extends StatelessWidget {
  const MinhasInf({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 650,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              const Positioned(
                left: 0,
                top: 570,
                child: SizedBox(
                  width: 360,
                  height: 140,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 5.86,
                        top: 5.47,
                        child: SizedBox(
                          width: 344.76,
                          height: 125.60,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 4.21,
                                top: 0,
                                child: Text(
                                  'Observações:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                top: 434,
                child: SizedBox(
                  width: 360,
                  height: 140,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 107,
                        top: 99.70,
                        child: SizedBox(
                          width: 70,
                          height: 30.74,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 13.97,
                                child: SizedBox(
                                  width: 63,
                                  height: 16.50,
                                  child: Text(
                                    '1.753,28',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 49,
                                  height: 13.89,
                                  child: Text(
                                    'Salário:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 128,
                        top: 66.58,
                        child: SizedBox(
                          width: 114,
                          height: 30.99,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 13.89,
                                child: SizedBox(
                                  width: 107,
                                  height: 17.10,
                                  child: Text(
                                    '01/01/2023',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 103,
                                  height: 13.89,
                                  child: Text(
                                    'Data da Admissão:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 99.62,
                        child: SizedBox(
                          width: 98,
                          height: 30.76,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 13.65,
                                child: SizedBox(
                                  width: 91,
                                  height: 17.10,
                                  child: Text(
                                    'Cobrador',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 37,
                                  height: 13.89,
                                  child: Text(
                                    'Cargo:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 66.74,
                        child: SizedBox(
                          width: 119,
                          height: 30.50,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.47,
                                child: SizedBox(
                                  width: 111,
                                  height: 14.96,
                                  child: Text(
                                    '01/05/2023',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 109,
                                  height: 13.89,
                                  child: Text(
                                    'Data do Pagamento:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 196,
                        top: 34.19,
                        child: SizedBox(
                          width: 147,
                          height: 30.99,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 8,
                                top: 13.89,
                                child: SizedBox(
                                  width: 95,
                                  height: 17.10,
                                  child: Text(
                                    '123456-7',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 37,
                                  height: 13.89,
                                  child: Text(
                                    'Conta:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 125,
                        top: 34.19,
                        child: SizedBox(
                          width: 67,
                          height: 30.25,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 5,
                                top: 13.89,
                                child: SizedBox(
                                  width: 62,
                                  height: 14.96,
                                  child: Text(
                                    '1234',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 0,
                                child: SizedBox(
                                  width: 49,
                                  height: 13.89,
                                  child: Text(
                                    'Agência:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 33.86,
                        child: SizedBox(
                          width: 116,
                          height: 30.25,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 15.29,
                                child: SizedBox(
                                  width: 108,
                                  height: 13.89,
                                  child: Text(
                                    '0001',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 25,
                                  height: 13.89,
                                  child: Text(
                                    'Cod:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 0.98,
                        child: SizedBox(
                          width: 338,
                          height: 30.99,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 5,
                                top: 16.11,
                                child: SizedBox(
                                  width: 280,
                                  height: 13.89,
                                  child: Text(
                                    'New Agenci',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 37,
                                  height: 13.89,
                                  child: Text(
                                    'Banco:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                top: 292,
                child: SizedBox(
                  width: 360,
                  height: 140,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 189,
                        top: 100.76,
                        child: SizedBox(
                          width: 51,
                          height: 30.76,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.85,
                                child: SizedBox(
                                  width: 44,
                                  height: 14.85,
                                  child: Text(
                                    'SP',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 33.67,
                                  height: 13.79,
                                  child: Text(
                                    'UF:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 105,
                        top: 100.76,
                        child: SizedBox(
                          width: 80,
                          height: 30.76,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.85,
                                child: SizedBox(
                                  width: 69,
                                  height: 14.85,
                                  child: Text(
                                    'Brasil',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 33.67,
                                  height: 13.79,
                                  child: Text(
                                    'País',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 100.76,
                        child: SizedBox(
                          width: 98,
                          height: 30.76,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.85,
                                child: SizedBox(
                                  width: 86,
                                  height: 14.85,
                                  child: Text(
                                    '180',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 44,
                                  height: 13.79,
                                  child: Text(
                                    'Número:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 89,
                        top: 67.88,
                        child: SizedBox(
                          width: 254,
                          height: 31.14,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.85,
                                child: SizedBox(
                                  width: 196,
                                  height: 14.85,
                                  child: Text(
                                    'Alamade Sempre Verde',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 31.16,
                                  height: 13.79,
                                  child: Text(
                                    'Rua:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 67.88,
                        child: SizedBox(
                          width: 82,
                          height: 30.76,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.85,
                                child: SizedBox(
                                  width: 71,
                                  height: 14.85,
                                  child: Text(
                                    '01.001-001',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 31.16,
                                  height: 13.79,
                                  child: Text(
                                    'CEP:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 156,
                        top: 35,
                        child: SizedBox(
                          width: 187,
                          height: 31.01,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 5,
                                top: 15.29,
                                child: SizedBox(
                                  width: 131,
                                  height: 13.89,
                                  child: Text(
                                    '01.001.001.0001-01',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 0,
                                child: SizedBox(
                                  width: 31,
                                  height: 13.79,
                                  child: Text(
                                    'CNPJ:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 35,
                        child: SizedBox(
                          width: 149,
                          height: 30.76,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.85,
                                child: SizedBox(
                                  width: 130,
                                  height: 14.85,
                                  child: Text(
                                    '0001',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 31.16,
                                  height: 13.31,
                                  child: Text(
                                    'Cod:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 2.12,
                        child: SizedBox(
                          width: 340,
                          height: 30.88,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 6.92,
                                top: 15.05,
                                child: SizedBox(
                                  width: 278.72,
                                  height: 14.96,
                                  child: Text(
                                    'Hermes CO.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6.92,
                                top: 0,
                                child: SizedBox(
                                  width: 48.43,
                                  height: 13.79,
                                  child: Text(
                                    'Empresa:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                top: 150,
                child: SizedBox(
                  width: 360,
                  height: 140,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 207,
                        top: 101.94,
                        child: SizedBox(
                          width: 33,
                          height: 29.85,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 4.53,
                                top: 14.41,
                                child: SizedBox(
                                  width: 28.47,
                                  height: 14.41,
                                  child: Text(
                                    'SP',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4.53,
                                top: 0,
                                child: SizedBox(
                                  width: 21.79,
                                  height: 13.38,
                                  child: Text(
                                    'UF:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 145,
                        top: 101.94,
                        child: SizedBox(
                          width: 58,
                          height: 29.85,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 5.07,
                                top: 14.41,
                                child: SizedBox(
                                  width: 50.03,
                                  height: 14.41,
                                  child: Text(
                                    'Brasil',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5.07,
                                top: 0,
                                child: SizedBox(
                                  width: 24.41,
                                  height: 13.38,
                                  child: Text(
                                    'País',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 86,
                        top: 102.11,
                        child: SizedBox(
                          width: 55,
                          height: 30.20,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.18,
                                child: SizedBox(
                                  width: 48,
                                  height: 15.02,
                                  child: Text(
                                    '123',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6.79,
                                top: 0,
                                child: SizedBox(
                                  width: 42.65,
                                  height: 13.38,
                                  child: Text(
                                    'Número:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 102.11,
                        child: SizedBox(
                          width: 79,
                          height: 30.20,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.01,
                                child: SizedBox(
                                  width: 68.95,
                                  height: 15.02,
                                  child: Text(
                                    'São José ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9.75,
                                top: 0,
                                child: SizedBox(
                                  width: 61.27,
                                  height: 13.38,
                                  child: Text(
                                    'Cidade:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 89,
                        top: 70.02,
                        child: SizedBox(
                          width: 151,
                          height: 29.85,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.41,
                                child: SizedBox(
                                  width: 140,
                                  height: 14.41,
                                  child: Text(
                                    'Polar',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 31.16,
                                  height: 13.38,
                                  child: Text(
                                    'Rua:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 70.03,
                        child: SizedBox(
                          width: 82,
                          height: 29.85,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.41,
                                child: SizedBox(
                                  width: 71,
                                  height: 14.41,
                                  child: Text(
                                    '12.230-240',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 31.16,
                                  height: 13.38,
                                  child: Text(
                                    'CEP:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 105,
                        top: 38.12,
                        child: SizedBox(
                          width: 135,
                          height: 29.85,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.41,
                                child: SizedBox(
                                  width: 119,
                                  height: 14.41,
                                  child: Text(
                                    '123.456.789-90',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 31.16,
                                  height: 13.38,
                                  child: Text(
                                    'CPF:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 38.12,
                        child: SizedBox(
                          width: 98,
                          height: 29.85,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.41,
                                child: SizedBox(
                                  width: 86,
                                  height: 14.41,
                                  child: Text(
                                    '0001',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 31.16,
                                  height: 13.38,
                                  child: Text(
                                    'Cod:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 6.21,
                        child: SizedBox(
                          width: 237,
                          height: 29.85,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7,
                                top: 14.41,
                                child: SizedBox(
                                  width: 224,
                                  height: 14.41,
                                  child: Text(
                                    'Pedro José Souza',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 0,
                                child: SizedBox(
                                  width: 31.16,
                                  height: 13.38,
                                  child: Text(
                                    'Nome:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  width: 360,
                  height: 149,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 124,
                        top: 105,
                        child: SizedBox(
                          width: 112,
                          height: 50,
                          child: Text(
                            'MINHAS INFORMAÇÕES',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF212157),
                              fontSize: 14,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  width: 360,
                  height: 100,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 103,
                          decoration:
                              const BoxDecoration(color: Color(0xFFE3E3FF)),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 26,
                        child: SizedBox(
                          width: 64,
                          height: 51.95,
                          child: Image.asset(
                            'assets/images/logo.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 141,
                        top: 27,
                        child: Text(
                          'Pedro\nHermes Co.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF212157),
                            fontSize: 20,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
