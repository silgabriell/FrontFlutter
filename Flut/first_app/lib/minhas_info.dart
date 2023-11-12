// import 'package:first_app/info_funcionarios.dart';
// import 'package:flutter/material.dart';

// class MinhasInf extends StatelessWidget {
//   const MinhasInf({Key? key}) : super(key: key);

//   void _onDadosPessoaisButtonPressed(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const MinhasInfoF()),
//     );
//   }

//   void _onDadosEmpresaBeneficiosButtonPressed() {
//     // Ação para o botão "Dados da empresa"
//   }

//   void _onDadosBancariosButtonPressed() {
//     // Ação para o botão "Dados Bancários"
//   }

//   void _onObservacoesButtonPressed() {
//     // Ação para o botão "Observações"
//   }

//   void _onVoltarButtonPressed(BuildContext context) {
//     if (Navigator.canPop(context)) {
//       Navigator.pop(context);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         padding: const EdgeInsets.fromLTRB(0, 0, 0, 85),
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           color: Color(0xffffffff),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               padding: const EdgeInsets.fromLTRB(0, 0, 0, 10.42),
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 color: Color(0xff212157),
//                 borderRadius: BorderRadius.only(
//                   bottomRight: Radius.circular(8),
//                   bottomLeft: Radius.circular(8),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.43),
//                     padding: const EdgeInsets.fromLTRB(32, 25, 31, 25.05),
//                     width: double.infinity,
//                     decoration: const BoxDecoration(
//                       color: Color(0xffe3e3ff),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Color(0x3f000000),
//                           offset: Offset(0, 4),
//                           blurRadius: 2,
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.fromLTRB(0, 1, 45, 0),
//                           width: 64,
//                           height: 51.95,
//                           child: Image.asset('assets/images/logo.png',
//                               fit: BoxFit.cover),
//                         ),
//                         Center(
//                           child: Container(
//                             margin: const EdgeInsets.fromLTRB(0, 1.05, 44, 0),
//                             constraints: const BoxConstraints(
//                               maxWidth: 111,
//                             ),
//                             child: const Text(
//                               'Pedro\nHermes Co.',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontFamily: 'Quicksand',
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.25,
//                                 color: Color(0xff212157),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Center(
//                     child: Container(
//                       margin: const EdgeInsets.fromLTRB(0, 4, 0, 1),
//                       width: double.infinity,
//                       child: const Text(
//                         'MINHAS INFORMAÇÕES',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontFamily: 'Quicksand',
//                           fontSize: 12,
//                           fontWeight: FontWeight.w700,
//                           height: 1.25,
//                           color: Color(0xffe3e3ff),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   TextButton(
//                     onPressed: () => _onDadosPessoaisButtonPressed(context),
//                     style: TextButton.styleFrom(
//                       padding: EdgeInsets.zero,
//                       elevation: 2,
//                       backgroundColor: Colors
//                           .grey, // Cor de destaque ao pressionar (personalize conforme desejado)
//                     ),
//                     child: Container(
//                       padding: const EdgeInsets.fromLTRB(20, 11.5, 12.89, 11.5),
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: const Color(0xffefefef),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Center(
//                             child: Container(
//                               margin:
//                                   const EdgeInsets.fromLTRB(0, 0, 214.14, 0),
//                               constraints: const BoxConstraints(
//                                 maxWidth: 75,
//                               ),
//                               child: const Text(
//                                 'Dados pessoais',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontFamily: 'Quicksand',
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w700,
//                                   height: 1.25,
//                                   color: Color(0xff000000),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//                             width: 37.97,
//                             height: 39.67,
//                             child: Image.asset(
//                               'assets/images/direita.png',
//                               width: 37.97,
//                               height: 39.67,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   TextButton(
//                     onPressed: _onDadosEmpresaBeneficiosButtonPressed,
//                     style: TextButton.styleFrom(
//                       padding: EdgeInsets.zero,
//                       elevation: 2,
//                       backgroundColor: Colors
//                           .grey, // Cor de destaque ao pressionar (personalize conforme desejado)
//                     ),
//                     child: Container(
//                       padding:
//                           const EdgeInsets.fromLTRB(15.5, 11.5, 12.89, 11.5),
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: const Color(0xffefefef),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Center(
//                             child: Container(
//                               margin:
//                                   const EdgeInsets.fromLTRB(0, 0, 209.64, 0),
//                               constraints: const BoxConstraints(
//                                 maxWidth: 84,
//                               ),
//                               child: const Text(
//                                 'Dados da empresa',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontFamily: 'Quicksand',
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w700,
//                                   height: 1.25,
//                                   color: Color(0xff000000),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//                             width: 37.97,
//                             height: 39.67,
//                             child: Image.asset(
//                               'assets/images/direita.png',
//                               width: 37.97,
//                               height: 39.67,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   TextButton(
//                     onPressed: _onDadosBancariosButtonPressed,
//                     style: TextButton.styleFrom(
//                       padding: EdgeInsets.zero,
//                       elevation: 2,
//                       backgroundColor: Colors
//                           .grey, // Cor de destaque ao pressionar (personalize conforme desejado)
//                     ),
//                     child: Container(
//                       padding: const EdgeInsets.fromLTRB(15, 11.5, 12.89, 11.5),
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: const Color(0xffefefef),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Center(
//                             child: Container(
//                               margin:
//                                   const EdgeInsets.fromLTRB(0, 0, 207.14, 0),
//                               constraints: const BoxConstraints(
//                                 maxWidth: 87,
//                               ),
//                               child: const Text(
//                                 'Dados Bancários',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontFamily: 'Quicksand',
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w700,
//                                   height: 1.25,
//                                   color: Color(0xff000000),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//                             width: 37.97,
//                             height: 39.67,
//                             child: Image.asset(
//                               'assets/images/direita.png',
//                               width: 37.97,
//                               height: 39.67,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   TextButton(
//                     onPressed: _onObservacoesButtonPressed,
//                     style: TextButton.styleFrom(
//                       padding: EdgeInsets.zero,
//                       elevation: 2,
//                       backgroundColor: Colors
//                           .grey, // Cor de destaque ao pressionar (personalize conforme desejado)
//                     ),
//                     child: Container(
//                       padding:
//                           const EdgeInsets.fromLTRB(15, 14.17, 12.89, 14.17),
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: const Color(0xffefefef),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Center(
//                             child: Container(
//                               margin:
//                                   const EdgeInsets.fromLTRB(0, 0, 179.14, 1),
//                               child: const Text(
//                                 'Observações',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   fontFamily: 'Quicksand',
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w700,
//                                   height: 1.25,
//                                   color: Color(0xff000000),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 37.97,
//                             height: 39.67,
//                             child: Image.asset(
//                               'assets/images/direita.png',
//                               width: 37.97,
//                               height: 39.67,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   Container(
//                     margin: const EdgeInsets.fromLTRB(0, 0, 0, 39),
//                     child: TextButton(
//                       onPressed: () {
//                         _onVoltarButtonPressed(context);
//                       },
//                       style: TextButton.styleFrom(
//                         padding: EdgeInsets.zero,
//                         elevation: 2,
//                         backgroundColor: Colors
//                             .grey, // Cor de destaque ao pressionar (personalize conforme desejado)
//                       ),
//                       child: Container(
//                         width: 300,
//                         height: 48,
//                         decoration: BoxDecoration(
//                           color: const Color(0xffe3e3ff),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             'VOLTAR',
//                             style: TextStyle(
//                               fontFamily: 'Quicksand',
//                               fontSize: 16,
//                               fontWeight: FontWeight.w700,
//                               height: 1.25,
//                               color: Color(0xff212157),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
