import 'package:quiz_app/models/quiz_question.dart';

// first answer in list is the correct answer
const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    'What is the purpose of a StatefulWidget in Flutter?',
    [
      'To create widgets that can change their state over time',
      'To create widgets that never change',
      'To manage app-wide state only',
      'To handle database operations',
    ],
  ),
  QuizQuestion(
    'Which method is called when a StatefulWidget is first created?',
    [
      'initState()',
      'build()',
      'dispose()',
      'setState()',
    ],
  ),
  QuizQuestion(
    'What does the const keyword do in Flutter?',
    [
      'Creates compile-time constants for better performance',
      'Makes variables mutable',
      'Declares a function',
      'Imports a package',
    ],
  ),
  QuizQuestion(
    'Which widget is used to create a scrollable list in Flutter?',
    [
      'ListView',
      'ScrollView',
      'ListBuilder',
      'ColumnScroll',
    ],
  ),
  QuizQuestion(
    'What is the correct way to update state in a StatefulWidget?',
    [
      'Call setState(() { })',
      'Directly modify the variable',
      'Call updateState()',
      'Call refresh()',
    ],
  ),
  QuizQuestion(
    'Which layout widget arranges children vertically?',
    [
      'Column',
      'Row',
      'Stack',
      'Container',
    ],
  ),
  QuizQuestion(
    'What programming language is Flutter based on?',
    [
      'Dart',
      'JavaScript',
      'Kotlin',
      'Swift',
    ],
  ),
  QuizQuestion(
    'Which widget allows you to make a widget tappable?',
    [
      'GestureDetector or InkWell',
      'Tappable',
      'ClickListener',
      'TouchableOpacity',
    ],
  ),
  QuizQuestion(
    'What is the difference between MainAxisAlignment and CrossAxisAlignment?',
    [
      'MainAxisAlignment aligns along the primary axis, CrossAxisAlignment aligns along the secondary axis',
      'They are the same thing',
      'MainAxisAlignment is for Column only',
      'CrossAxisAlignment is deprecated',
    ],
  ),
  QuizQuestion(
    'Which method is called when a StatefulWidget is removed from the widget tree?',
    [
      'dispose()',
      'destroy()',
      'remove()',
      'deactivate()',
    ],
  ),
  QuizQuestion(
    'What does the Scaffold widget provide?',
    [
      'Basic material design layout structure with app bar, body, and floating action button',
      'A database connection',
      'Navigation routing',
      'State management',
    ],
  ),
  QuizQuestion(
    'Which widget is used to create spaces between widgets?',
    [
      'SizedBox or Spacer',
      'Gap',
      'Margin',
      'Distance',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the BuildContext in Flutter?',
    [
      'It represents the location of a widget in the widget tree',
      'It builds the app from scratch',
      'It manages user context and sessions',
      'It compiles Dart code',
    ],
  ),
  QuizQuestion(
    'Which widget allows overlapping of child widgets?',
    [
      'Stack',
      'Overlay',
      'Layer',
      'ZIndex',
    ],
  ),
  QuizQuestion(
    'What does the late keyword mean in Dart?',
    [
      'The variable will be initialized later but before it is used',
      'The variable is deprecated',
      'The variable loads slowly',
      'The variable is optional',
    ],
  ),
  QuizQuestion(
    'Which widget is used for text input in Flutter?',
    [
      'TextField or TextFormField',
      'InputBox',
      'EditText',
      'TextInput',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the Key parameter in widgets?',
    [
      'To preserve state when widgets move around in the tree',
      'To encrypt widget data',
      'To unlock premium features',
      'To identify widgets for testing only',
    ],
  ),
  QuizQuestion(
    'Which state management solution is built into Flutter?',
    [
      'setState and InheritedWidget',
      'Redux',
      'MobX',
      'NgRx',
    ],
  ),
  QuizQuestion(
    'What does the async keyword indicate in Dart?',
    [
      'The function performs asynchronous operations and returns a Future',
      'The function runs on a separate thread',
      'The function is deprecated',
      'The function is synchronized',
    ],
  ),
  QuizQuestion(
    'Which widget is used to navigate between screens?',
    [
      'Navigator',
      'Router',
      'ScreenManager',
      'PageView',
    ],
  ),
  QuizQuestion(
    'What is the difference between hot reload and hot restart?',
    [
      'Hot reload preserves state while hot restart loses state and restarts the app',
      'They are exactly the same',
      'Hot restart is faster than hot reload',
      'Hot reload only works on iOS',
    ],
  ),
  QuizQuestion(
    'Which widget makes its child responsive to the available space?',
    [
      'Expanded or Flexible',
      'Responsive',
      'Adaptive',
      'FlexBox',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the pubspec.yaml file?',
    [
      'To manage project dependencies, assets, and metadata',
      'To write Flutter code',
      'To store user data',
      'To configure the device emulator',
    ],
  ),
];
