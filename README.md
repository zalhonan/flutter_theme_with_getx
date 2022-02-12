# get_theme_demo

## Особенности: 

- Цвета вынесены в Palette
    - плохо: IDE не показывает цвет при использовании
    - хорошо: легко делать рескин. Удалить все цвета и сразу видно, где нужно подать новые цвета
- AppThemes поставляет в приложение скопированные ThemeData.light() и ThemeData.light()
- AppThemes поставляет ColorScheme.light и dark из AppColorScheme
    - нет явных недостатков
- CustomColorScheme - по прежнему extension для ColorScheme
    - почему: его неразумно расширять с миксином, так как конструкторы очень сложные
    - плохо: нужно каждый раз подгружать расширение в импорты (однако это делается автоматом)
    - плохо: нужно писать тернарки вида (brightness == Brightness.light) 
    - хорошо: все это работает без внешних библиотек типа GetX и с минимальными переделками
    - можно погружать как final themeData = Theme.of(context).colorScheme;
    - смена цвета работает в Stateful и Stateless widgets

