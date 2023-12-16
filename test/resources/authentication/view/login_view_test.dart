 
// import 'package:flutter/material.dart';
// import 'package:http/testing.dart';
// import 'package:millat/resources/authentication/bloc/service/auth_service.dart';

// void main() {
//   group('AuthService Tests', () {
//     late AuthService authService;

//     setUp(() {
//       authService = AuthService(client: MockClient((request) async {
//         // Default mock response for all requests
//         return Response('', 404);
//       }));
//     });

//     test('Login should return a valid result for successful login', () async {
//       // Adjust the client for this specific test case
//       authService.client = MockClient((request) async {
//         // Mocking a successful login response
//         return Response(
//           jsonEncode({
//             'status': 200,
//             'result': {'token': 'testToken'}
//           }),
//           200,
//         );
//       });

//       final result = await authService.login(
//         email: 'test@example.com',
//         password: 'testPassword',
//         context: MockBuildContext(),
//       );

//       expect(result['status'], true);
//       expect(result.containsKey('result'), true);
//       expect(result['result']['token'], 'testToken');
//     });

//     test('Login should handle errors gracefully', () async {
//       // Adjust the client for this specific test case
//       authService.client = MockClient((request) async {
//         // Mocking an error response
//         return Response(
//           jsonEncode({'status': 400, 'message': 'Invalid credentials'}),
//           400,
//         );
//       });

//       final result = await authService.login(
//         email: 'invalid@example.com',
//         password: 'invalidPassword',
//         context: MockBuildContext(),
//       );

//       expect(result['status'], false);
//       expect(result.containsKey('message'), true);
//       expect(result['message'], 'Invalid credentials');
//     });

//     // Add more tests for other AuthService methods
//   });
// }

// class MockBuildContext extends Mock implements BuildContext {}
