import 'package:custed2/core/store/presistent_store.dart';
import 'package:custed2/ui/theme.dart';

class SettingStore with PresistentStore {
  @override
  final boxName = 'setting';

  StoreProperty<bool> get useScheduleAsHome =>
      property('useScheduleAsHome', defaultValue: false);

  StoreProperty<bool> get showFestivalAndHoliday =>
      property('showFestivalAndHoliday', defaultValue: true);

  StoreProperty<bool> get showInactiveLessons =>
      property('showInactiveLessons', defaultValue: true);

  StoreProperty<bool> get dontCountElectiveCourseGrade =>
      property('dontCountElectiveCourseGrade', defaultValue: false);

  StoreProperty<int> get darkMode =>
      property('darkMode', defaultValue: DarkMode.auto);

  StoreProperty<int> get ignoreUpdate => property('ignoreUpdate');

  StoreProperty<String> get notification => property('notification');
}
