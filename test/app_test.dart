import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mocktail/mocktail.dart';
import 'package:todos/app/app.dart';
import 'package:todos/home/view/home_page.dart';
import 'package:todos/theme/theme.dart';
import 'package:todos_repository/todos_repository.dart';

import 'helpers/helpers.dart';

void main() {
  late TodosRepository todosRepository;

  setUp(() {
    todosRepository = MockTodosRepository();
    when(
      () => todosRepository.getTodos(),
    ).thenAnswer((_) => const Stream.empty());
  });

  group('App', () {
    testWidgets('renders AppView', (tester) async {
      await tester.pumpWidget(
        App(createTodosRepository: () => todosRepository),
      );

      expect(find.byType(AppView), findsOneWidget);
    });
  });

  group('AppView', () {
    testWidgets('renders MaterialApp with correct themes', (tester) async {
      await tester.pumpWidget(
        RepositoryProvider.value(
          value: todosRepository,
          child: const AppView(),
        ),
      );

      expect(find.byType(MaterialApp), findsOneWidget);

      final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
      expect(materialApp.theme, equals(FlutterTodosTheme.light));
      expect(materialApp.darkTheme, equals(FlutterTodosTheme.dark));
    });

    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(
        RepositoryProvider.value(
          value: todosRepository,
          child: const AppView(),
        ),
      );

      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
