import 'package:flutter/material.dart';

class Menu1Dialog extends StatelessWidget {
  const Menu1Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    void onMinhasInformacoesButtonPressed() {
      // Coloque a ação desejada para Minhas Informações aqui
    }

    void onFolhaDePagamentoButtonPressed() {
      // Coloque a ação desejada para Folha de Pagamento aqui
    }

    void onBeneficiosButtonPressed() {
      // Coloque a ação desejada para Benefícios aqui
    }

    void onRelatorioDeHorasButtonPressed() {
      // Coloque a ação desejada para Relatório de Horas aqui
    }

    void onAjudaButtonPressed() {
      // Coloque a ação desejada para Ajuda aqui
    }

    const AssetImage folhadepagamentoIcon =
        AssetImage('assets/images/dinheiro.png');
    const AssetImage minhasinformacoesIcon =
        AssetImage('assets/images/perfil.png');
    const AssetImage relatoriodehorasIcon =
        AssetImage('assets/images/relogio.png');
    const AssetImage beneficiosIcon = AssetImage('assets/images/mao.png');
    const AssetImage ajudaIcon = AssetImage('assets/images/ajuda-ic.png');

    double screenWidth = MediaQuery.of(context).size.width;

    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      content: Container(
        width: 400,
        height: 600,
        constraints: const BoxConstraints(maxHeight: 348),
        color: const Color(0xFFE3E3FF),
        child: Column(
          children: [
            Container(
              width: screenWidth,
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Olá Pedro',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF212157),
                  fontSize: 25,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  TextButton(
                    onPressed: onMinhasInformacoesButtonPressed,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE3E3FF),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            'Minhas Informações',
                            style: TextStyle(
                              color: Color(0xFF212157),
                              fontSize: 16,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Image(
                            image: folhadepagamentoIcon,
                            width: 110,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  TextButton(
                    onPressed: onFolhaDePagamentoButtonPressed,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE3E3FF),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            'Folha de Pagamento',
                            style: TextStyle(
                              color: Color(0xFF212157),
                              fontSize: 16,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Image(
                            image: minhasinformacoesIcon,
                            width: 110,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  TextButton(
                    onPressed: onRelatorioDeHorasButtonPressed,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE3E3FF),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            'Relatório de Horas',
                            style: TextStyle(
                              color: Color(0xFF212157),
                              fontSize: 16,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Image(
                            image: relatoriodehorasIcon,
                            width: 110,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  TextButton(
                    onPressed: onBeneficiosButtonPressed,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE3E3FF),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            'Benefícios',
                            style: TextStyle(
                              color: Color(0xFF212157),
                              fontSize: 16,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Image(
                            image: beneficiosIcon,
                            width: 110,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  TextButton(
                    onPressed: onAjudaButtonPressed,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE3E3FF),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            'Ajuda',
                            style: TextStyle(
                              color: Color(0xFF212157),
                              fontSize: 16,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Image(
                            image: ajudaIcon,
                            width: 110,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
