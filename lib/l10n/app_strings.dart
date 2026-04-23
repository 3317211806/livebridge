import 'package:flutter/material.dart';

class AppStrings {
  AppStrings({required this.isRu});
  final bool isRu;

  static AppStrings of(BuildContext context) {
    final bool isRu = Localizations.localeOf(
      context,
    ).languageCode.toLowerCase().startsWith('ru');
    return AppStrings(isRu: isRu);
  }

  // --- 基础状态反馈 ---
  String get refresh => '刷新';
  String get saved => '设置已保存。';
  String get saveFailed => '无法保存设置。';
  String get permissionGranted => '通知权限已授予。';
  String get permissionDenied => '未获得通知权限。';
  String get listenerOpened => '已打开通知监听设置。';
  String get listenerUnavailable => '无法在此设备上打开监听设置。';
  String get notificationsOpened => '已打开应用通知设置。';
  String get notificationsUnavailable => '无法打开应用通知设置。';
  String get liveUpdatesOpened => '已打开实时活动设置。';
  String get liveUpdatesUnavailable => '无法在此设备上打开实时活动设置。';
  String get githubOpenFailed => '无法打开 GitHub 链接。';

  // --- 词典管理 ---
  String get dictionaryEmpty => '词典为空或无效。';
  String get dictionaryDownloadFailed => '导出词典失败。';
  String get dictionarySaved => '词典已保存到下载文件夹。';
  String get dictionaryUploadDone => '自定义词典已上传。';
  String get dictionaryUpdateDone => '词典已从 GitHub 更新。';
  String get dictionaryInvalid => '无效的词典 JSON。';
  String get dictionaryUploadFailed => '上传词典失败。';
  String get dictionaryUpdateFailed => '从 GitHub 更新词典失败。';
  String get dictionaryResetDone => '已恢复内置词典。';
  String get dictionaryResetFailed => '恢复词典失败。';

  // --- 界面标题与提示 ---
  String get heroTitle => 'LiveBridge';
  String get masterToggleLockedHint => '请先授予通知监听权限和通知权限。';
  String get githubUrl => 'github.com/appsfolder/livebridge';
  String get githubReleasesUrl => 'github.com/appsfolder/livebridge/releases';
  String get downloadPageUrl => 'appsfolder.github.io/livebridge';
  String get reportBug => '报告问题';
  String get bugReportCopied => '诊断信息已复制。请粘贴到 Issue 中。';
  String get bugReportCopyFailed => '无法复制诊断信息。';
  String get hideWarningBanner => '隐藏';
  String get backgroundWarningTitle => '后台运行重要提示';
  String backgroundWarningBody(String deviceLabel) => '在 $deviceLabel 上，请务必允许自启动和不受限的后台活动，否则实时活动可能会停止更新或冻结。';
  String get samsungWarningTitle => '三星设备有更好的版本';
  String get samsungWarningBody => '针对三星设备，有专门优化的 LiveBridge 版本，建议安装该版本。';
  String get samsungWarningAction => '获取三星专用版';

  // --- 权限管理 ---
  String get accessTitle => '权限管理';
  String get accessSubtitle => '开启以下核心权限以确保功能稳定：';
  String get listenerAccess => '通知监听权限';
  String get postNotifications => '允许发送通知';
  String get liveUpdatesAccess => '实时活动增强权限';
  String get open => '打开';
  String get request => '请求';
  String get grant => '授予';
  String get manage => '管理';

  // --- 核心设置 ---
  String get settingsTitle => '设置';
  String get keepAliveForegroundTitle => '增强后台模式';
  String get keepAliveForegroundSubtitle => '运行持久前台服务以提升后台稳定性。';
  String get keepAliveForegroundInactiveSubtitle => '开启 LiveBridge 后激活。';
  String get networkSpeedTitle => '网速显示';
  String get networkSpeedSubtitle => '在状态栏实时显示当前上传/下载速度。';
  String get networkSpeedInactiveSubtitle => '开启 LiveBridge 后激活。';
  String get networkSpeedThresholdTitle => '显示门槛';
  String get networkSpeedThresholdSubtitle => '达到此网速后才显示实时活动。';
  String get networkSpeedThresholdAlways => '始终显示';
  String get syncDndTitle => '同步勿扰模式';
  String get syncDndSubtitle => '手机开启勿扰时自动隐藏通知。';
  String get updateChecksTitle => '检查更新';
  String get updateChecksSubtitle => '应用启动时自动检测新版本。';
  String updateAvailableBanner(String version) => '发现新版本${version.isNotEmpty ? ': $version' : ''}';

  // --- 实验性功能 ---
  String get experimentalTitle => '实验性功能';
  String get notificationDedupTitle => '通知去重';
  String get notificationDedupSubtitle => '当 LiveBridge 已显示内容时，消除原始通知。';
  String get notificationDedupModeLabel => '去重模式';
  String get notificationDedupModeOtpStatus => '验证码与状态';
  String get notificationDedupModeOtpOnly => '仅验证码';
  String get notificationDedupStatusesTitle => '同时去重状态通知';
  String get notificationDedupStatusesSubtitle => '关闭后仅针对验证码去重。';
  String get animatedIslandTitle => '动态岛动画';
  String get animatedIslandSubtitle => '循环切换灵动岛短文本（可能不稳定）。';
  String get hyperBridgeTitle => '小米 HyperOS 灵动岛';
  String get hyperBridgeSubtitle => '针对小米 HyperOS：注入原生灵动岛参数。';
  String get aospCuttingTitle => 'AOSP 文本截断';
  String get aospCuttingSubtitle => '将灵动岛文本限制在 7 个字符以内。';

  // --- 应用独立设置 ---
  String get appPresentationSettings => '应用独立设置';
  String get appPresentationSubtitle => '为不同应用单独定制显示行为。';
  String get appPresentationScreenTitle => '应用定制管理';
  String get appPresentationLoadFailed => '无法加载应用设置。';
  String get appPresentationSaveFailed => '无法保存应用设置。';
  String get appPresentationDownloadFailed => '导出 JSON 失败。';
  String get appPresentationSaved => '设置已保存至下载文件夹。';
  String get appPresentationUploadDone => '应用设置已导入。';
  String get appPresentationUploadFailed => '导入 JSON 失败。';
  String get appPresentationInvalidJson => '无效的 JSON 配置。';
  String get appPresentationDefaultSummary => '默认行为';
  String get appPresentationTextSourceLabel => '灵动岛文本来源';
  String get appPresentationIconSourceLabel => '图标来源';
  String get appPresentationTextTitle => '通知标题';
  String get appPresentationTextNotification => '通知内容';
  String get appPresentationIconNotification => '通知图标';
  String get appPresentationIconApp => '应用图标';

  // --- 通用操作 ---
  String get downloadSettings => '下载设置';
  String get uploadSettings => '上传设置';
  String get defaultLabel => '默认';
  String get resetToDefault => '恢复默认';
  String get save => '保存';
  String get downloadDictionary => '下载词典';
  String get updateDictionary => '更新词典';
  String get uploadDictionary => '上传词典';
  String get resetDictionary => '重置词典';
  String get pickApps => '选择应用';
  String get pickerTitle => '选择应用';
  String get otpPickerTitle => '识别验证码的应用';
  String get bypassPickerTitle => '白名单应用';
  String get notificationDedupPickerTitle => '去重应用';
  String get applySelection => '应用选择';
  String get searchAppHint => '搜索名称或包名';
  String get showSystemApps => '显示系统应用';
  String get hideSystemApps => '隐藏系统应用';
  String get appsLoadFailed => '无法加载应用列表。';
  String get appsAccessTitle => '应用列表权限';
  String get appsAccessMessage => '允许读取应用列表以配置规则？';
  String get appsAccessSaveFailed => '无法保存权限偏好。';
  String get cancel => '取消';
  String get allow => '允许';
  String selectedAppsCount(int value) => '已选择 $value 个应用';
  String get noAppsSelected => '未选择应用';

  // --- 转换规则 ---
  String get rulesTitle => '转换规则';
  String get rulesSubtitle => '定义通知转换逻辑。';
  String get modeLabel => '运行模式';
  String get modeAll => '所有应用';
  String get modeInclude => '仅包含';
  String get modeExclude => '排除模式';
  String get pickAppsHint => '列表仅在包含/排除模式下生效。';
  String get bypassRulesTitle => '白名单应用';
  String get bypassRulesSubtitle => '列表应用将始终进行转换。';
  String get saveRules => '保存';

  // --- 智能检测 ---
  String get smartDetectionTitle => '智能状态检测';
  String get smartCardTitle => '智能转换';
  String get smartCardSubtitle => '将文本阶段转换为进度流。';
  String get smartDetectionSubtitle => '识别外卖/打车/导航状态。';
  String get smartMediaPlaybackTitle => '媒体播放';
  String get smartMediaPlaybackSubtitle => '将媒体通知转换为实时活动。';
  String get smartNavigationTitle => '导航识别';
  String get smartNavigationSubtitle => '自动识别地图导航通知。';
  String get smartWeatherTitle => '天气识别';
  String get smartWeatherSubtitle => '在灵动岛显示当前温度。';
  String get smartExternalDevicesTitle => '外部设备';
  String get smartExternalDevicesSubtitle => '显示蓝牙设备连接状态。';
  String get smartVpnTitle => 'VPN 服务';
  String get smartVpnSubtitle => '显示 VPN 实时流量。';
  String get smartNavigationDisabledSubtitle => '请先开启智能检测。';
  String get smartDetectionDisabledSubtitle => '在“仅限进度条”模式下禁用。';
  String get conflictingModesHint => '请关闭“仅限进度条”以启用文本状态识别。';
  String get onlyProgressTitle => '仅限进度条';
  String get onlyProgressSubtitle => '开启后仅转换带进度条的通知。';
  String get textProgressTitle => '文本进度识别';
  String get textProgressSubtitle => '识别文本中的 % 为进度。';

  // --- 系统兼容性与验证码 ---
  String get blockedTitle => 'AOSP 兼容性警告';
  String get blockedSubtitle => '此应用在 AOSP 固件上表现欠佳，请谨慎使用。';
  String get blockedBypassAction => '仍然继续';
  String get blockedBypassSaveFailed => '无法保存选择。';
  String get otpTitle => '验证码显示';
  String get otpSubtitle => '在灵动岛显示验证码。';
  String get otpEnabledTitle => '识别验证码';
  String get otpEnabledSubtitle => '在折叠状态下直接显示代码。';
  String get otpAutoCopyTitle => '自动复制';
  String get otpAutoCopySubtitle => '自动将代码复制到剪贴板。';
  String get otpAutoCopyDisabledSubtitle => '请先开启验证码识别。';
  String get otpModeLabel => '验证码模式';
  String get saveOtpRules => '保存';
}
