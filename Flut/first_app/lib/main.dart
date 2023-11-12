// import 'package:first_app/esqueceu_senha.dart';
import 'package:first_app/abertura.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Abertura(),
      ),
    ),
  );
}

// import 'package:first_app/menu.dart';
// import 'package:first_app/minhas_info.dart';
// import 'package:first_app/tela_de_sair.dart';
// // import 'package:first_app/tela_de_sair.dart';
// import 'package:flutter/material.dart';

// class Principal extends StatelessWidget {
//   const Principal({super.key});

//   void _onMenuButtonPressed(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const Menu1Dialog()),
//     );
//   }

//   void _onMinhasInformacoesButtonPressed(BuildContext context) {
//     // Navegue para a tela MinhasInfo quando o botão for pressionado
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const MinhasInf()),
//     );
//   }

//   void _onFolhaDePagamentoButtonPressed(BuildContext context) {
//     // Coloque a ação desejada aqui
//   }

//   void _onBeneficiosButtonPressed(BuildContext context) {
//     // Coloque a ação desejada aqui
//   }

//   void _onRelatorioDeHorasButtonPressed(BuildContext context) {
//     // Coloque a ação desejada aqui
//   }

//   void _onAjudaButtonPressed(BuildContext context) {
//     // Coloque a ação desejada aqui
//   }

//   void _onSairButtonPressed(BuildContext context) {
//     // Coloque a ação desejada aqui
//     ConfirmSairDialog.show(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           width: double.infinity,
//           decoration: const BoxDecoration(
//             color: Colors.transparent,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(16.0),
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   color: Color(0xffe3e3ff),
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.fromLTRB(0, 0, 55, 0),
//                       width: 64.0,
//                       height: 51.95,
//                       child: Image.asset(
//                         'assets/images/logo.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Center(
//                       child: Container(
//                         margin: const EdgeInsets.fromLTRB(0, 0.05, 44, 0),
//                         constraints: const BoxConstraints(
//                           maxWidth: 111,
//                         ),
//                         child: const Text(
//                           'Pedro\nHermes Co.',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontFamily: 'Quicksand',
//                             fontSize: 18,
//                             fontWeight: FontWeight.w700,
//                             height: 1.25,
//                             color: Color(0xff212157),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.fromLTRB(0, 0.05, 0, 0),
//                       child: TextButton(
//                         onPressed: () => _onMenuButtonPressed(context),
//                         style: TextButton.styleFrom(
//                           padding: EdgeInsets.zero,
//                         ),
//                         child: SizedBox(
//                           width: 32.0,
//                           height: 32.0,
//                           child: Image.asset(
//                             'assets/images/menu.png',
//                             width: 32.0,
//                             height: 32.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.fromLTRB(17, 13, 15, 14),
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   color: Color(0xff212157),
//                   borderRadius: BorderRadius.only(
//                     bottomRight: Radius.circular(8),
//                     bottomLeft: Radius.circular(8),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.fromLTRB(0, 0, 1, 4),
//                       width: double.infinity,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.fromLTRB(0, 0, 77, 0),
//                             child: const Text(
//                               'Valor a receber:',
//                               style: TextStyle(
//                                 fontFamily: 'Quicksand',
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.25,
//                                 color: Color.fromARGB(255, 254, 254, 254),
//                               ),
//                             ),
//                           ),
//                           const Text(
//                             ' R\$ 1.509,81',
//                             textAlign: TextAlign.right,
//                             style: TextStyle(
//                               fontFamily: 'Quicksand',
//                               fontSize: 18,
//                               fontWeight: FontWeight.w700,
//                               height: 1.25,
//                               color: Color.fromARGB(255, 255, 255, 255),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
//                             child: const Text(
//                               'Previsão de pagamento:',
//                               style: TextStyle(
//                                 fontFamily: 'Quicksand',
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.25,
//                                 color: Color.fromARGB(255, 255, 255, 255),
//                               ),
//                             ),
//                           ),
//                           const Text(
//                             '08/05/2023',
//                             textAlign: TextAlign.right,
//                             style: TextStyle(
//                               fontFamily: 'Quicksand',
//                               fontSize: 18,
//                               fontWeight: FontWeight.w700,
//                               height: 1.25,
//                               color: Color.fromARGB(255, 255, 255, 255),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.fromLTRB(16, 27, 16, 44),
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.fromLTRB(0, 0, 0, 39),
//                       child: TextButton(
//                         onPressed: () =>
//                             _onMinhasInformacoesButtonPressed(context),
//                         style: TextButton.styleFrom(
//                           padding: EdgeInsets.zero,
//                         ),
//                         child: Container(
//                           constraints: const BoxConstraints(maxWidth: 350),
//                           height: 48.0,
//                           decoration: BoxDecoration(
//                             color: const Color(0xffe3e3ff),
//                             borderRadius: BorderRadius.circular(8),
//                             boxShadow: const [
//                               BoxShadow(
//                                 color: Color(0x3f212157),
//                                 offset: Offset(0, 4),
//                                 blurRadius: 2,
//                               ),
//                             ],
//                           ),
//                           child: const Center(
//                             child: Text(
//                               'Minhas informações',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontFamily: 'Quicksand',
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.25,
//                                 color: Color(0xff212157),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.fromLTRB(0, 0, 0, 39),
//                       child: TextButton(
//                         onPressed: () =>
//                             _onFolhaDePagamentoButtonPressed(context),
//                         style: TextButton.styleFrom(
//                           padding: EdgeInsets.zero,
//                         ),
//                         child: Container(
//                           constraints: const BoxConstraints(maxWidth: 350),
//                           height: 48.0,
//                           decoration: BoxDecoration(
//                             color: const Color(0xffe3e3ff),
//                             borderRadius: BorderRadius.circular(8),
//                             boxShadow: const [
//                               BoxShadow(
//                                 color: Color(0x3f212157),
//                                 offset: Offset(0, 4),
//                                 blurRadius: 2,
//                               ),
//                             ],
//                           ),
//                           child: const Center(
//                             child: Text(
//                               'Folha de pagamento',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontFamily: 'Quicksand',
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.25,
//                                 color: Color(0xff212157),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.fromLTRB(0, 0, 0, 39),
//                       child: TextButton(
//                         onPressed: () =>
//                             _onRelatorioDeHorasButtonPressed(context),
//                         style: TextButton.styleFrom(
//                           padding: EdgeInsets.zero,
//                         ),
//                         child: Container(
//                           constraints: const BoxConstraints(maxWidth: 350),
//                           height: 48.0,
//                           decoration: BoxDecoration(
//                             color: const Color(0xffe3e3ff),
//                             borderRadius: BorderRadius.circular(8),
//                             boxShadow: const [
//                               BoxShadow(
//                                 color: Color(0x3f212157),
//                                 offset: Offset(0, 4),
//                                 blurRadius: 2,
//                               ),
//                             ],
//                           ),
//                           child: const Center(
//                             child: Text(
//                               'Relatório de horas',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontFamily: 'Quicksand',
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.25,
//                                 color: Color(0xff212157),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.fromLTRB(0, 0, 0, 39),
//                       child: TextButton(
//                         onPressed: () => _onBeneficiosButtonPressed(context),
//                         style: TextButton.styleFrom(
//                           padding: EdgeInsets.zero,
//                         ),
//                         child: Container(
//                           constraints: const BoxConstraints(maxWidth: 350),
//                           height: 48.0,
//                           decoration: BoxDecoration(
//                             color: const Color(0xffe3e3ff),
//                             borderRadius: BorderRadius.circular(8),
//                             boxShadow: const [
//                               BoxShadow(
//                                 color: Color(0x3f212157),
//                                 offset: Offset(0, 4),
//                                 blurRadius: 2,
//                               ),
//                             ],
//                           ),
//                           child: const Center(
//                             child: Text(
//                               'Benefícios',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontFamily: 'Quicksand',
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.25,
//                                 color: Color(0xff212157),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.fromLTRB(0, 0, 0, 39),
//                 child: TextButton(
//                   onPressed: () => _onAjudaButtonPressed(context),
//                   style: TextButton.styleFrom(
//                     padding: EdgeInsets.zero,
//                   ),
//                   child: Container(
//                     constraints: const BoxConstraints(maxWidth: 300),
//                     height: 48.0,
//                     decoration: BoxDecoration(
//                       color: const Color(0xffe3e3ff),
//                       borderRadius: BorderRadius.circular(8),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Color(0x3f212157),
//                           offset: Offset(0, 4),
//                           blurRadius: 2,
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.fromLTRB(100, 0.67, 50, 0),
//                           child: const Text(
//                             'Ajuda',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontFamily: 'Quicksand',
//                               fontSize: 20.0,
//                               fontWeight: FontWeight.w700,
//                               height: 1.25,
//                               color: Color(0xff212157),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.33),
//                           width: 25.33,
//                           height: 25.33,
//                           child: Image.asset(
//                             'assets/images/ajuda-ic.png',
//                             width: 25.33,
//                             height: 25.33,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.fromLTRB(0, 0, 0, 39),
//                 child: TextButton(
//                   onPressed: () => _onSairButtonPressed(context),
//                   style: TextButton.styleFrom(
//                     padding: EdgeInsets.zero,
//                   ),
//                   child: Container(
//                     constraints: const BoxConstraints(maxWidth: 300),
//                     height: 48.0,
//                     decoration: BoxDecoration(
//                       color: const Color(0xffff6767),
//                       borderRadius: BorderRadius.circular(8),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Color(0x3f212157),
//                           offset: Offset(0, 4),
//                           blurRadius: 2,
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Center(
//                           child: Container(
//                             margin: const EdgeInsets.fromLTRB(100, 0.67, 73, 0),
//                             child: const Text(
//                               'Sair',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontFamily: 'Quicksand',
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.25,
//                                 color: Color(0xff212157),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
//                           width: 22.17,
//                           height: 22.67,
//                           child: Image.asset(
//                             'assets/images/sair.png',
//                             width: 22.17,
//                             height: 22.67,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
