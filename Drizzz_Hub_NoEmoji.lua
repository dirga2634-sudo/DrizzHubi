-- ╔══════════════════════════════╗
-- ║   DRIZZZ HUB  V3.1          ║
-- ║   by absorpohonods           ║
-- ╚══════════════════════════════╝

do for _,v in pairs(game.CoreGui:GetChildren()) do if (v.Name=="DirzzzHub") then v:Destroy() end end end
getgenv().DirzzzHubLoaded = false

-- ══════════════════════════════
--  ICON MAP (no emoji, custom)
-- ══════════════════════════════
-- Tab icons pakai Unicode khusus:
-- ⌂ = Home   ≡ = Main   ◉ = Visual
-- ↯ = Admin  ⊕ = Hub    ✦ = Setting   ◈ = Lang
-- Status:
-- ⟦+⟧ = OK   ⟦x⟧ = Error   ⟦!⟧ = Warning
-- ⟦K⟧ = Key  ⟦?⟧ = Search  ⟦D⟧ = Dev

-- ══════════════════════════════
--  KEY SYSTEM GUI
-- ══════════════════════════════
local key = "FREE"
local keyGui = Instance.new("ScreenGui", game.CoreGui)
keyGui.Name = "DirzzzHubKey"
keyGui.ResetOnSpawn = false

local keyFrame = Instance.new("Frame", keyGui)
keyFrame.Size = UDim2.new(0, 300, 0, 160)
keyFrame.Position = UDim2.new(0.5, -150, 0.5, -80)
keyFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 20)
keyFrame.BorderSizePixel = 0
Instance.new("UICorner", keyFrame).CornerRadius = UDim.new(0, 14)
local kfs = Instance.new("UIStroke", keyFrame)
kfs.Thickness = 2
kfs.Color = Color3.fromRGB(0, 170, 255)

-- Title
local kTitle = Instance.new("TextLabel", keyFrame)
kTitle.Size = UDim2.new(1, 0, 0, 34)
kTitle.Position = UDim2.new(0, 0, 0, 0)
kTitle.Text = "  ╔ Drizzz Hub ╗  Enter Key"
kTitle.TextColor3 = Color3.fromRGB(0, 200, 255)
kTitle.BackgroundTransparency = 1
kTitle.TextScaled = true
kTitle.Font = Enum.Font.GothamBold

-- Input box
local kBox = Instance.new("TextBox", keyFrame)
kBox.Size = UDim2.new(1, -20, 0, 36)
kBox.Position = UDim2.new(0, 10, 0, 38)
kBox.PlaceholderText = "  ⟦K⟧  Enter key here..."
kBox.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
kBox.TextColor3 = Color3.new(1, 1, 1)
kBox.TextScaled = true
kBox.Font = Enum.Font.Gotham
kBox.ClearTextOnFocus = false
Instance.new("UICorner", kBox).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", kBox).Color = Color3.fromRGB(0, 100, 180)

-- Submit button
local kBtn = Instance.new("TextButton", keyFrame)
kBtn.Size = UDim2.new(1, -20, 0, 34)
kBtn.Position = UDim2.new(0, 10, 0, 82)
kBtn.Text = "  ⟦ SUBMIT ⟧"
kBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 220)
kBtn.TextColor3 = Color3.new(1, 1, 1)
kBtn.TextScaled = true
kBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", kBtn).CornerRadius = UDim.new(0, 8)

local unlocked = false
kBtn.MouseButton1Click:Connect(function()
	if kBox.Text == key then
		unlocked = true
		keyGui:Destroy()
	else
		kBox.Text = "  ⟦x⟧  Wrong Key!"
		kBox.TextColor3 = Color3.fromRGB(255, 80, 80)
		task.wait(1.5)
		kBox.Text = ""
		kBox.TextColor3 = Color3.new(1, 1, 1)
	end
end)

repeat task.wait() until unlocked

if getgenv().DirzzzHubLoaded then return end
getgenv().DirzzzHubLoaded = true

-- ══════════════════════════════
--  LOADING SCREEN (ANIMATED)
-- ══════════════════════════════
local loadGui = Instance.new("ScreenGui", game.CoreGui)
loadGui.Name = "DirzzzHubLoad"
loadGui.ResetOnSpawn = false

local loadBG = Instance.new("Frame", loadGui)
loadBG.Size = UDim2.new(1, 0, 1, 0)
loadBG.BackgroundColor3 = Color3.fromRGB(4, 4, 14)
loadBG.BorderSizePixel = 0

-- Garis dekorasi atas
local topLine = Instance.new("Frame", loadBG)
topLine.Size = UDim2.new(0, 0, 0, 2)
topLine.Position = UDim2.new(0, 0, 0, 0)
topLine.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
topLine.BorderSizePixel = 0

-- ASCII art logo Drizzz (custom, bukan emoji)
local logoLabel = Instance.new("TextLabel", loadBG)
logoLabel.Size = UDim2.new(0, 400, 0, 120)
logoLabel.Position = UDim2.new(0.5, -200, 0.5, -120)
logoLabel.BackgroundTransparency = 1
logoLabel.TextColor3 = Color3.fromRGB(0, 200, 255)
logoLabel.Font = Enum.Font.Code
logoLabel.TextScaled = true
logoLabel.RichText = true
logoLabel.Text = [[<b>╔══════════════════╗
║  ◈ DRIZZZ  HUB ◈  ║
╚══════════════════╝</b>]]

-- Subtitle
local subLabel = Instance.new("TextLabel", loadBG)
subLabel.Size = UDim2.new(0, 400, 0, 30)
subLabel.Position = UDim2.new(0.5, -200, 0.5, 10)
subLabel.BackgroundTransparency = 1
subLabel.TextColor3 = Color3.fromRGB(80, 160, 220)
subLabel.Font = Enum.Font.GothamBold
subLabel.TextScaled = true
subLabel.Text = "  ⟦D⟧  by absorpohonods  |  V3.1"

-- Progress bar BG
local barBG = Instance.new("Frame", loadBG)
barBG.Size = UDim2.new(0, 340, 0, 8)
barBG.Position = UDim2.new(0.5, -170, 0.5, 60)
barBG.BackgroundColor3 = Color3.fromRGB(20, 20, 50)
barBG.BorderSizePixel = 0
Instance.new("UICorner", barBG).CornerRadius = UDim.new(1, 0)

-- Progress bar fill
local barFill = Instance.new("Frame", barBG)
barFill.Size = UDim2.new(0, 0, 1, 0)
barFill.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
barFill.BorderSizePixel = 0
Instance.new("UICorner", barFill).CornerRadius = UDim.new(1, 0)

-- Status text
local statusLabel = Instance.new("TextLabel", loadBG)
statusLabel.Size = UDim2.new(0, 340, 0, 24)
statusLabel.Position = UDim2.new(0.5, -170, 0.5, 76)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.fromRGB(60, 140, 200)
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextScaled = true
statusLabel.Text = "⟦?⟧  Initializing..."

-- Dots animasi kanan bawah
local dotsLabel = Instance.new("TextLabel", loadBG)
dotsLabel.Size = UDim2.new(0, 200, 0, 20)
dotsLabel.Position = UDim2.new(0.5, -100, 0.5, 104)
dotsLabel.BackgroundTransparency = 1
dotsLabel.TextColor3 = Color3.fromRGB(0, 120, 180)
dotsLabel.Font = Enum.Font.Code
dotsLabel.TextScaled = true
dotsLabel.Text = "· · ·"

-- Versi kecil pojok
local verLabel = Instance.new("TextLabel", loadBG)
verLabel.Size = UDim2.new(0, 120, 0, 20)
verLabel.Position = UDim2.new(1, -130, 1, -28)
verLabel.BackgroundTransparency = 1
verLabel.TextColor3 = Color3.fromRGB(40, 80, 120)
verLabel.Font = Enum.Font.Gotham
verLabel.TextScaled = true
verLabel.Text = "◈ Drizzz Hub  V3.1"

-- Animate loading bar + status
local TweenService = game:GetService("TweenService")

-- Top line reveal
TweenService:Create(topLine, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
	Size = UDim2.new(1, 0, 0, 2)
}):Play()

local steps = {
	{pct=0.15, txt="⟦?⟧  Loading core modules..."},
	{pct=0.30, txt="⟦?⟧  Building UI framework..."},
	{pct=0.50, txt="⟦?⟧  Applying galaxy theme..."},
	{pct=0.70, txt="⟦?⟧  Loading scripts database..."},
	{pct=0.85, txt="⟦?⟧  Connecting services..."},
	{pct=1.00, txt="⟦+⟧  Done!  Welcome, absorpohonods"},
}

local dotFrames = {"·  ·  ·", "◈  ·  ·", "◈  ◈  ·", "◈  ◈  ◈"}
local dotIdx = 1

task.spawn(function()
	while loadGui and loadGui.Parent do
		dotsLabel.Text = dotFrames[dotIdx]
		dotIdx = (dotIdx % #dotFrames) + 1
		task.wait(0.25)
	end
end)

for _, step in ipairs(steps) do
	task.wait(0.45)
	TweenService:Create(barFill, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(step.pct, 0, 1, 0)
	}):Play()
	statusLabel.Text = step.txt
	if step.pct == 1.0 then
		statusLabel.TextColor3 = Color3.fromRGB(0, 220, 120)
		barFill.BackgroundColor3 = Color3.fromRGB(0, 220, 120)
	end
end

task.wait(0.7)

-- Fade out loading screen
TweenService:Create(loadBG, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
	BackgroundTransparency = 1
}):Play()
for _, child in pairs(loadBG:GetDescendants()) do
	if child:IsA("TextLabel") or child:IsA("Frame") then
		pcall(function()
			TweenService:Create(child, TweenInfo.new(0.4), {BackgroundTransparency=1, TextTransparency=1}):Play()
		end)
	end
end
task.wait(0.5)
loadGui:Destroy()

-- ══════════════════════════════
--  MAIN SCRIPT (LANGUAGE STRINGS)
-- ══════════════════════════════
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")

local languages = {
	EN = {
		flag="[EN]", name="English",
		hub_title="◈ Drizzz Hub  | V3.1",
		watermark="↯ Drizzz Hub",
		tab_home="⌂\nHome",
		tab_main="≡\nMain",
		tab_visual="◉\nVisual",
		tab_admin="↯\nAdmin",
		tab_hub="⊕\nHub",
		tab_setting="✦\nSetting",
		tab_lang="◈\nLang",
		home1="◈ <b>Drizzz Hub</b>  | Version <b>V3.1</b>\n⟦D⟧ Developer: <b>absorpohonods</b>",
		home2="≡ <b>Update Log V3.1:</b>\n⟦+⟧ Galaxy UI theme\n⟦+⟧ Sidebar navigation\n⟦+⟧ Smooth animations\n⟦+⟧ Game Filter in Main\n⟦+⟧ Custom Background\n⟦+⟧ Cooler watermark",
		home3="⟦!⟧ <b>Announcement:</b>\n⟦!⟧ Don't spam execute!\n⟦K⟧ Key: FREE\n⟦?⟧ Report bugs to Developer",
		home4="⟦!⟧ <b>IMPORTANT:</b>\n⟦x⟧ This script is FREE and\n<b>NOT FOR SALE!</b>\n⟦x⟧ If anyone sells it, it's FAKE!",
		home5="⟦+⟧ <b>Tips:</b>\n⟦?⟧ Filter by game in Main tab\n─ Click ─ to minimize\n✕ Click X to close",
		search_ph="⟦?⟧ Search script...",
		filter_all="⊕ All",
		filter_bloxfruit="◉ Blox Fruits",
		filter_tsb="↯ TSB",
		filter_doors="⌂ Doors",
		filter_arsenal="≡ Arsenal",
		filter_mm2="≡ MM2",
		filter_brookhaven="⌂ Brookhaven",
		filter_universal="✦ Universal",
		ws_label="↯ WalkSpeed (max 500)",
		ws_ph="Type 1-500...",
		jp_label="◉ JumpPower (max 1000)",
		jp_ph="Type 1-1000...",
		inf_jump="Infinite Jump",
		noclip="Noclip",
		anti_afk="Anti AFK",
		rejoin="Rejoin Game",
		fly="Fly GUI",
		godmode="Godmode",
		cmdx="CMD-X Admin",
		fullbright="FullBright",
		no_fog="No Fog",
		rem_tex="Remove Textures",
		fps="FPS Boost",
		blur="Blur Effect",
		neon="Neon Theme",
		rainbow="Rainbow Sky",
		daytime="Day Time",
		nighttime="Night Time",
		reset_light="Reset Lighting",
		esp="ESP Player",
		pshade="PShade",
		auto_exec="Auto Execute",
		fix_lag="Fix Lag",
		shaders="Shaders HD",
		lang_title="◈ <b>Select Language</b>",
		lang_desc="Click a language button to change all text!",
		set_btn="Set",
	},
	ID = {
		flag="[ID]", name="Indonesia",
		hub_title="◈ Drizzz Hub  | V3.1",
		watermark="↯ Drizzz Hub",
		tab_home="⌂\nHome",
		tab_main="≡\nMain",
		tab_visual="◉\nVisual",
		tab_admin="↯\nAdmin",
		tab_hub="⊕\nHub",
		tab_setting="✦\nSetting",
		tab_lang="◈\nBahasa",
		home1="◈ <b>Drizzz Hub</b>  | Versi <b>V3.1</b>\n⟦D⟧ Developer: <b>absorpohonods</b>",
		home2="≡ <b>Update Log V3.1:</b>\n⟦+⟧ Tema UI Galaxy\n⟦+⟧ Sidebar navigasi\n⟦+⟧ Animasi smooth\n⟦+⟧ Filter Game di Main\n⟦+⟧ Custom Background\n⟦+⟧ Watermark lebih keren",
		home3="⟦!⟧ <b>Pengumuman:</b>\n⟦!⟧ Jangan spam execute!\n⟦K⟧ Key: FREE\n⟦?⟧ Report bug ke Developer",
		home4="⟦!⟧ <b>PENTING:</b>\n⟦x⟧ Script ini GRATIS dan\n<b>TIDAK DIPERJUALBELIKAN!</b>\n⟦x⟧ Jika ada yg jual, itu PALSU!",
		home5="⟦+⟧ <b>Tips:</b>\n⟦?⟧ Filter game di tab Main\n─ Klik ─ untuk minimize\n✕ Klik X untuk tutup",
		search_ph="⟦?⟧ Cari script...",
		filter_all="⊕ Semua",
		filter_bloxfruit="◉ Blox Fruits",
		filter_tsb="↯ TSB",
		filter_doors="⌂ Doors",
		filter_arsenal="≡ Arsenal",
		filter_mm2="≡ MM2",
		filter_brookhaven="⌂ Brookhaven",
		filter_universal="✦ Universal",
		ws_label="↯ WalkSpeed (maks 500)",
		ws_ph="Ketik 1-500...",
		jp_label="◉ JumpPower (maks 1000)",
		jp_ph="Ketik 1-1000...",
		inf_jump="Infinite Jump",
		noclip="Noclip",
		anti_afk="Anti AFK",
		rejoin="Rejoin Game",
		fly="Fly GUI",
		godmode="Godmode",
		cmdx="CMD-X Admin",
		fullbright="FullBright",
		no_fog="No Fog",
		rem_tex="Hapus Tekstur",
		fps="FPS Boost",
		blur="Efek Blur",
		neon="Tema Neon",
		rainbow="Langit Pelangi",
		daytime="Siang Hari",
		nighttime="Malam Hari",
		reset_light="Reset Pencahayaan",
		esp="ESP Player",
		pshade="PShade",
		auto_exec="Auto Execute",
		fix_lag="Perbaiki Lag",
		shaders="Shaders HD",
		lang_title="◈ <b>Pilih Bahasa</b>",
		lang_desc="Klik tombol bahasa untuk mengganti semua teks!",
		set_btn="Set",
	},
	JP = {
		flag="[JP]", name="日本語",
		hub_title="◈ Drizzz Hub  | V3.1",
		watermark="↯ Drizzz Hub",
		tab_home="⌂\nホーム",
		tab_main="≡\nメイン",
		tab_visual="◉\nビジュアル",
		tab_admin="↯\nアドミン",
		tab_hub="⊕\nハブ",
		tab_setting="✦\n設定",
		tab_lang="◈\n言語",
		home1="◈ <b>Drizzz Hub</b>  | バージョン <b>V3.1</b>\n⟦D⟧ 開発者: <b>absorpohonods</b>",
		home2="≡ <b>更新ログ V3.1:</b>\n⟦+⟧ ギャラクシーUI\n⟦+⟧ サイドバー\n⟦+⟧ スムーズアニメ\n⟦+⟧ ゲームフィルター\n⟦+⟧ スクリプト追加\n⟦+⟧ ウォーターマーク改善",
		home3="⟦!⟧ <b>お知らせ:</b>\n⟦!⟧ スパム禁止!\n⟦K⟧ キー: FREE\n⟦?⟧ バグ報告は開発者へ",
		home4="⟦!⟧ <b>重要:</b>\n⟦x⟧ このスクリプトは無料!\n<b>販売禁止!</b>\n⟦x⟧ 販売は偽物です!",
		home5="⟦+⟧ <b>ヒント:</b>\n⟦?⟧ ゲームフィルター使用\n─ ─で最小化\n✕ Xで閉じる",
		search_ph="⟦?⟧ スクリプト検索...",
		filter_all="⊕ 全て",
		filter_bloxfruit="◉ Blox Fruits",
		filter_tsb="↯ TSB",
		filter_doors="⌂ Doors",
		filter_arsenal="≡ Arsenal",
		filter_mm2="≡ MM2",
		filter_brookhaven="⌂ Brookhaven",
		filter_universal="✦ Universal",
		ws_label="↯ 歩行速度 (最大500)",
		ws_ph="1-500を入力...",
		jp_label="◉ ジャンプ力 (最大1000)",
		jp_ph="1-1000を入力...",
		inf_jump="無限ジャンプ",
		noclip="ノークリップ",
		anti_afk="AFK防止",
		rejoin="再参加",
		fly="飛行GUI",
		godmode="神モード",
		cmdx="CMD-X管理",
		fullbright="フルブライト",
		no_fog="霧なし",
		rem_tex="テクスチャ削除",
		fps="FPS向上",
		blur="ぼかし",
		neon="ネオン",
		rainbow="レインボー",
		daytime="昼間",
		nighttime="夜間",
		reset_light="照明リセット",
		esp="ESP",
		pshade="PShade",
		auto_exec="自動実行",
		fix_lag="ラグ修正",
		shaders="HDシェーダー",
		lang_title="◈ <b>言語を選択</b>",
		lang_desc="ボタンをクリックして言語を変更!",
		set_btn="設定",
	},
	AR = {
		flag="[AR]", name="عربي",
		hub_title="◈ Drizzz Hub  | V3.1",
		watermark="↯ Drizzz Hub",
		tab_home="⌂\nالرئيسية",
		tab_main="≡\nالرئيسي",
		tab_visual="◉\nمرئي",
		tab_admin="↯\nإدارة",
		tab_hub="⊕\nهاب",
		tab_setting="✦\nإعداد",
		tab_lang="◈\nلغة",
		home1="◈ <b>Drizzz Hub</b>  | الإصدار <b>V3.1</b>\n⟦D⟧ المطور: <b>absorpohonods</b>",
		home2="≡ <b>سجل التحديث:</b>\n⟦+⟧ واجهة مجرة\n⟦+⟧ شريط جانبي\n⟦+⟧ رسوم متحركة\n⟦+⟧ فلتر الألعاب\n⟦+⟧ سكريبتات أكثر\n⟦+⟧ علامة مائية أجمل",
		home3="⟦!⟧ <b>إعلان:</b>\n⟦!⟧ لا تكرر!\n⟦K⟧ المفتاح: FREE\n⟦?⟧ أبلغ المطور",
		home4="⟦!⟧ <b>مهم:</b>\n⟦x⟧ مجاني!\n<b>ليس للبيع!</b>\n⟦x⟧ البيع مزيف!",
		home5="⟦+⟧ <b>نصائح:</b>\n⟦?⟧ فلتر الألعاب في Main\n─ للتصغير\n✕ X للإغلاق",
		search_ph="⟦?⟧ ابحث...",
		filter_all="⊕ الكل",
		filter_bloxfruit="◉ Blox Fruits",
		filter_tsb="↯ TSB",
		filter_doors="⌂ Doors",
		filter_arsenal="≡ Arsenal",
		filter_mm2="≡ MM2",
		filter_brookhaven="⌂ Brookhaven",
		filter_universal="✦ Universal",
		ws_label="↯ سرعة المشي (500)",
		ws_ph="1-500...",
		jp_label="◉ قوة القفز (1000)",
		jp_ph="1-1000...",
		inf_jump="قفز لا نهائي",
		noclip="اختراق",
		anti_afk="مضاد AFK",
		rejoin="إعادة",
		fly="طيران",
		godmode="إله",
		cmdx="CMD-X",
		fullbright="إضاءة",
		no_fog="بدون ضباب",
		rem_tex="إزالة",
		fps="FPS",
		blur="ضبابية",
		neon="نيون",
		rainbow="قوس قزح",
		daytime="نهار",
		nighttime="ليل",
		reset_light="إعادة إضاءة",
		esp="ESP",
		pshade="PShade",
		auto_exec="تشغيل تلقائي",
		fix_lag="إصلاح التأخير",
		shaders="HD شادرز",
		lang_title="◈ <b>اختر اللغة</b>",
		lang_desc="انقر على زر اللغة لتغيير النص!",
		set_btn="تعيين",
	},
	MY = {
		flag="[MY]", name="Melayu",
		hub_title="◈ Drizzz Hub  | V3.1",
		watermark="↯ Drizzz Hub",
		tab_home="⌂\nUtama",
		tab_main="≡\nMain",
		tab_visual="◉\nVisual",
		tab_admin="↯\nAdmin",
		tab_hub="⊕\nHub",
		tab_setting="✦\nTetapan",
		tab_lang="◈\nBahasa",
		home1="◈ <b>Drizzz Hub</b>  | Versi <b>V3.1</b>\n⟦D⟧ Pembangun: <b>absorpohonods</b>",
		home2="≡ <b>Log Kemaskini V3.1:</b>\n⟦+⟧ Tema UI Galaxy\n⟦+⟧ Nav Sidebar\n⟦+⟧ Animasi Lancar\n⟦+⟧ Penapis Permainan\n⟦+⟧ Latar Belakang Custom\n⟦+⟧ Watermark Baru",
		home3="⟦!⟧ <b>Pengumuman:</b>\n⟦!⟧ Jangan spam execute!\n⟦K⟧ Kunci: FREE\n⟦?⟧ Laporkan bug kepada Pembangun",
		home4="⟦!⟧ <b>PENTING:</b>\n⟦x⟧ Skrip ini PERCUMA dan\n<b>TIDAK DIJUAL!</b>\n⟦x⟧ Jika ada jual, itu PALSU!",
		home5="⟦+⟧ <b>Tips:</b>\n⟦?⟧ Tapis ikut permainan di Main\n─ Klik ─ untuk minimumkan\n✕ Klik X untuk tutup",
		search_ph="⟦?⟧ Cari skrip...",
		filter_all="⊕ Semua",
		filter_bloxfruit="◉ Blox Fruits",
		filter_tsb="↯ TSB",
		filter_doors="⌂ Doors",
		filter_arsenal="≡ Arsenal",
		filter_mm2="≡ MM2",
		filter_brookhaven="⌂ Brookhaven",
		filter_universal="✦ Universal",
		ws_label="↯ Kelajuan Jalan (maks 500)",
		ws_ph="Taip 1-500...",
		jp_label="◉ Kuasa Lompat (maks 1000)",
		jp_ph="Taip 1-1000...",
		inf_jump="Lompat Tak Terhingga",
		noclip="Noclip",
		anti_afk="Anti AFK",
		rejoin="Sertai Semula",
		fly="Terbang GUI",
		godmode="Mod Dewa",
		cmdx="CMD-X Admin",
		fullbright="Cahaya Penuh",
		no_fog="Tiada Kabus",
		rem_tex="Buang Tekstur",
		fps="Tingkat FPS",
		blur="Kesan Kabur",
		neon="Tema Neon",
		rainbow="Langit Pelangi",
		daytime="Siang",
		nighttime="Malam",
		reset_light="Tetapkan Semula Cahaya",
		esp="ESP Pemain",
		pshade="PShade",
		auto_exec="Auto Jalankan",
		fix_lag="Baiki Lag",
		shaders="Shaders HD",
		lang_title="◈ <b>Pilih Bahasa</b>",
		lang_desc="Klik butang bahasa untuk tukar teks!",
		set_btn="Set",
	},
	CN = {
		flag="[CN]", name="中文",
		hub_title="◈ Drizzz Hub  | V3.1",
		watermark="↯ Drizzz Hub",
		tab_home="⌂\n主页",
		tab_main="≡\n主界面",
		tab_visual="◉\n视觉",
		tab_admin="↯\n管理",
		tab_hub="⊕\n枢纽",
		tab_setting="✦\n设置",
		tab_lang="◈\n语言",
		home1="◈ <b>Drizzz Hub</b>  | 版本 <b>V3.1</b>\n⟦D⟧ 开发者: <b>absorpohonods</b>",
		home2="≡ <b>更新日志 V3.1:</b>\n⟦+⟧ 星系UI主题\n⟦+⟧ 侧边栏导航\n⟦+⟧ 流畅动画\n⟦+⟧ 游戏过滤器\n⟦+⟧ 自定义背景\n⟦+⟧ 更酷的水印",
		home3="⟦!⟧ <b>公告:</b>\n⟦!⟧ 不要重复执行!\n⟦K⟧ 密钥: FREE\n⟦?⟧ 向开发者报告错误",
		home4="⟦!⟧ <b>重要:</b>\n⟦x⟧ 此脚本免费且\n<b>不得出售!</b>\n⟦x⟧ 若有人出售，是假的!",
		home5="⟦+⟧ <b>提示:</b>\n⟦?⟧ 在Main标签按游戏过滤\n─ 点击 ─ 最小化\n✕ 点击X关闭",
		search_ph="⟦?⟧ 搜索脚本...",
		filter_all="⊕ 全部",
		filter_bloxfruit="◉ Blox Fruits",
		filter_tsb="↯ TSB",
		filter_doors="⌂ Doors",
		filter_arsenal="≡ Arsenal",
		filter_mm2="≡ MM2",
		filter_brookhaven="⌂ Brookhaven",
		filter_universal="✦ 通用",
		ws_label="↯ 行走速度 (最大500)",
		ws_ph="输入 1-500...",
		jp_label="◉ 跳跃力 (最大1000)",
		jp_ph="输入 1-1000...",
		inf_jump="无限跳跃",
		noclip="穿墙",
		anti_afk="防挂机",
		rejoin="重新加入",
		fly="飞行GUI",
		godmode="无敌模式",
		cmdx="CMD-X管理",
		fullbright="全亮",
		no_fog="无雾",
		rem_tex="删除材质",
		fps="提升FPS",
		blur="模糊效果",
		neon="霓虹主题",
		rainbow="彩虹天空",
		daytime="白天",
		nighttime="夜晚",
		reset_light="重置光照",
		esp="ESP玩家",
		pshade="PShade",
		auto_exec="自动执行",
		fix_lag="修复延迟",
		shaders="高清着色器",
		lang_title="◈ <b>选择语言</b>",
		lang_desc="点击语言按钮更改所有文字!",
		set_btn="设置",
	},
	JV = {
		flag="[JV]", name="Jawa",
		hub_title="◈ Drizzz Hub  | V3.1",
		watermark="↯ Drizzz Hub",
		tab_home="⌂\nNgarep",
		tab_main="≡\nUtama",
		tab_visual="◉\nVisual",
		tab_admin="↯\nAdmin",
		tab_hub="⊕\nHub",
		tab_setting="✦\nSetelan",
		tab_lang="◈\nBasa",
		home1="◈ <b>Drizzz Hub</b>  | Versi <b>V3.1</b>\n⟦D⟧ Developer: <b>absorpohonods</b>",
		home2="≡ <b>Log Update V3.1:</b>\n⟦+⟧ Tema UI Galaxy\n⟦+⟧ Sidebar navigasi\n⟦+⟧ Animasi smooth\n⟦+⟧ Filter Game\n⟦+⟧ Background custom\n⟦+⟧ Watermark sip",
		home3="⟦!⟧ <b>Pengumuman:</b>\n⟦!⟧ Ojo spam execute!\n⟦K⟧ Key: FREE\n⟦?⟧ Lapor bug nang Developer",
		home4="⟦!⟧ <b>PENTING:</b>\n⟦x⟧ Script iki GRATIS\n<b>OJO DIDOL!</b>\n⟦x⟧ Sing dodol iku PALSU!",
		home5="⟦+⟧ <b>Tips:</b>\n⟦?⟧ Filter game nang Main\n─ Klik ─ nggo minimize\n✕ Klik X nggo nutup",
		search_ph="⟦?⟧ Goleki script...",
		filter_all="⊕ Kabeh",
		filter_bloxfruit="◉ Blox Fruits",
		filter_tsb="↯ TSB",
		filter_doors="⌂ Doors",
		filter_arsenal="≡ Arsenal",
		filter_mm2="≡ MM2",
		filter_brookhaven="⌂ Brookhaven",
		filter_universal="✦ Universal",
		ws_label="↯ Kecepatan Mlaku (maks 500)",
		ws_ph="Ketik 1-500...",
		jp_label="◉ Kekuatan Loncat (maks 1000)",
		jp_ph="Ketik 1-1000...",
		inf_jump="Loncat Terus",
		noclip="Tembus Tembok",
		anti_afk="Anti AFK",
		rejoin="Mlebu Maneh",
		fly="Mabur GUI",
		godmode="Mode Dewa",
		cmdx="CMD-X Admin",
		fullbright="Cahaya Full",
		no_fog="Ra Ana Kabut",
		rem_tex="Ilangke Tekstur",
		fps="Dhuwurke FPS",
		blur="Efek Blur",
		neon="Tema Neon",
		rainbow="Langit Pelangi",
		daytime="Awan",
		nighttime="Wengi",
		reset_light="Reset Cahaya",
		esp="ESP Player",
		pshade="PShade",
		auto_exec="Auto Execute",
		fix_lag="Benakke Lag",
		shaders="Shaders HD",
		lang_title="◈ <b>Pilih Basa</b>",
		lang_desc="Klik tombol basa nggo ganti teks kabeh!",
		set_btn="Set",
	},
	DK = {
		flag="[DK]", name="Dayak Ngaju",
		hub_title="◈ Drizzz Hub  | V3.1",
		watermark="↯ Drizzz Hub",
		tab_home="⌂\nRumah",
		tab_main="≡\nUtama",
		tab_visual="◉\nVisual",
		tab_admin="↯\nAdmin",
		tab_hub="⊕\nHub",
		tab_setting="✦\nSeting",
		tab_lang="◈\nBasa",
		home1="◈ <b>Drizzz Hub</b>  | Versi <b>V3.1</b>\n⟦D⟧ Pengembang: <b>absorpohonods</b>",
		home2="≡ <b>Log Update V3.1:</b>\n⟦+⟧ Tema UI Galaxy\n⟦+⟧ Sidebar navigasi\n⟦+⟧ Animasi mulus\n⟦+⟧ Filter Game\n⟦+⟧ Background custom\n⟦+⟧ Watermark bagus",
		home3="⟦!⟧ <b>Pengumuman:</b>\n⟦!⟧ Jangan spam execute!\n⟦K⟧ Kunci: FREE\n⟦?⟧ Lapor bug ka Pengembang",
		home4="⟦!⟧ <b>PENTING:</b>\n⟦x⟧ Script ini GRATIS\n<b>JIDA DIJUAL!</b>\n⟦x⟧ Awi menjual, itu PALSU!",
		home5="⟦+⟧ <b>Tips:</b>\n⟦?⟧ Filter game di tab Main\n─ Klik ─ untuk minimize\n✕ Klik X untuk tutup",
		search_ph="⟦?⟧ Handak script...",
		filter_all="⊕ Semua",
		filter_bloxfruit="◉ Blox Fruits",
		filter_tsb="↯ TSB",
		filter_doors="⌂ Doors",
		filter_arsenal="≡ Arsenal",
		filter_mm2="≡ MM2",
		filter_brookhaven="⌂ Brookhaven",
		filter_universal="✦ Universal",
		ws_label="↯ Kacepatan Jalan (maks 500)",
		ws_ph="Ketik 1-500...",
		jp_label="◉ Kekuatan Lompat (maks 1000)",
		jp_ph="Ketik 1-1000...",
		inf_jump="Lompat Terus",
		noclip="Tembus Dinding",
		anti_afk="Anti AFK",
		rejoin="Masuk Balik",
		fly="Terbang GUI",
		godmode="Mode Dewa",
		cmdx="CMD-X Admin",
		fullbright="Cahaya Penuh",
		no_fog="Jida Ada Kabut",
		rem_tex="Buang Tekstur",
		fps="Tingkat FPS",
		blur="Efek Kabur",
		neon="Tema Neon",
		rainbow="Langit Pelangi",
		daytime="Siang",
		nighttime="Malam",
		reset_light="Reset Pencahayaan",
		esp="ESP Player",
		pshade="PShade",
		auto_exec="Auto Execute",
		fix_lag="Perbaiki Lag",
		shaders="Shaders HD",
		lang_title="◈ <b>Pilih Basa</b>",
		lang_desc="Klik tombol basa untuk mengganti semua teks!",
		set_btn="Set",
	},
}

-- ══════════════════════════════
--  MAIN GUI BUILD
-- ══════════════════════════════
local currentLang = languages.ID
local gui = Instance.new("ScreenGui", CoreGui)
gui.Name = "DirzzzHub"
gui.ResetOnSpawn = false

-- Dragable main frame
local mainFrame = Instance.new("Frame", gui)
mainFrame.Size = UDim2.new(0, 420, 0, 300)
mainFrame.Position = UDim2.new(0.5, -210, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 20)
mainFrame.BorderSizePixel = 0
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 14)
local mfs = Instance.new("UIStroke", mainFrame)
mfs.Thickness = 2
mfs.Color = Color3.fromRGB(0, 140, 220)

-- Drag logic
local dragging, dragStart, startPos
mainFrame.InputBegan:Connect(function(i)
	if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = i.Position
		startPos = mainFrame.Position
	end
end)
mainFrame.InputEnded:Connect(function(i)
	if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
		dragging = false
	end
end)
game:GetService("UserInputService").InputChanged:Connect(function(i)
	if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
		local delta = i.Position - dragStart
		mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

-- Title bar
local titleBar = Instance.new("Frame", mainFrame)
titleBar.Size = UDim2.new(1, 0, 0, 32)
titleBar.BackgroundColor3 = Color3.fromRGB(5, 5, 18)
titleBar.BorderSizePixel = 0
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 14)

local titleLabel = Instance.new("TextLabel", titleBar)
titleLabel.Size = UDim2.new(1, -80, 1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.fromRGB(0, 200, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextScaled = true
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Text = currentLang.hub_title

-- Minimize / Close buttons
local minBtn = Instance.new("TextButton", titleBar)
minBtn.Size = UDim2.new(0, 28, 0, 22)
minBtn.Position = UDim2.new(1, -60, 0.5, -11)
minBtn.Text = "─"
minBtn.BackgroundColor3 = Color3.fromRGB(30, 80, 140)
minBtn.TextColor3 = Color3.new(1,1,1)
minBtn.TextScaled = true
minBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", minBtn).CornerRadius = UDim.new(0, 6)

local closeBtn = Instance.new("TextButton", titleBar)
closeBtn.Size = UDim2.new(0, 28, 0, 22)
closeBtn.Position = UDim2.new(1, -28, 0.5, -11)
closeBtn.Text = "✕"
closeBtn.BackgroundColor3 = Color3.fromRGB(160, 30, 30)
closeBtn.TextColor3 = Color3.new(1,1,1)
closeBtn.TextScaled = true
closeBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)

local minimized = false
minBtn.MouseButton1Click:Connect(function()
	minimized = not minimized
	mainFrame.Size = minimized and UDim2.new(0, 420, 0, 32) or UDim2.new(0, 420, 0, 300)
end)
closeBtn.MouseButton1Click:Connect(function()
	gui:Destroy()
	getgenv().DirzzzHubLoaded = false
end)

-- Watermark
local watermark = Instance.new("TextLabel", gui)
watermark.Size = UDim2.new(0, 160, 0, 24)
watermark.Position = UDim2.new(0, 8, 1, -30)
watermark.BackgroundColor3 = Color3.fromRGB(5, 5, 18)
watermark.TextColor3 = Color3.fromRGB(0, 200, 255)
watermark.Font = Enum.Font.GothamBold
watermark.TextScaled = true
watermark.Text = currentLang.watermark
watermark.BorderSizePixel = 0
Instance.new("UICorner", watermark).CornerRadius = UDim.new(0, 6)
Instance.new("UIStroke", watermark).Color = Color3.fromRGB(0, 120, 200)

-- ══════════════════════════════
--  SIDEBAR TABS
-- ══════════════════════════════
local sidebar = Instance.new("Frame", mainFrame)
sidebar.Size = UDim2.new(0, 58, 1, -32)
sidebar.Position = UDim2.new(0, 0, 0, 32)
sidebar.BackgroundColor3 = Color3.fromRGB(5, 5, 16)
sidebar.BorderSizePixel = 0
local sbl = Instance.new("UIListLayout", sidebar)
sbl.Padding = UDim.new(0, 2)
sbl.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- Content area
local contentArea = Instance.new("Frame", mainFrame)
contentArea.Size = UDim2.new(1, -60, 1, -34)
contentArea.Position = UDim2.new(0, 60, 0, 34)
contentArea.BackgroundTransparency = 1

-- Pages table
local pages = {}
local tabBtns = {}
local activeTab = nil

local function createPage()
	local page = Instance.new("ScrollingFrame", contentArea)
	page.Size = UDim2.new(1, 0, 1, 0)
	page.BackgroundTransparency = 1
	page.BorderSizePixel = 0
	page.ScrollBarThickness = 3
	page.ScrollBarImageColor3 = Color3.fromRGB(0, 140, 220)
	page.CanvasSize = UDim2.new(0, 0, 0, 0)
	page.AutomaticCanvasSize = Enum.AutomaticSize.Y
	page.Visible = false
	local layout = Instance.new("UIListLayout", page)
	layout.Padding = UDim.new(0, 4)
	local pad = Instance.new("UIPadding", page)
	pad.PaddingLeft = UDim.new(0, 6)
	pad.PaddingRight = UDim.new(0, 6)
	pad.PaddingTop = UDim.new(0, 4)
	return page
end

local function switchTab(idx)
	for i, p in pairs(pages) do
		p.Visible = (i == idx)
	end
	for i, b in pairs(tabBtns) do
		b.BackgroundColor3 = (i == idx) and Color3.fromRGB(0, 100, 200) or Color3.fromRGB(12, 12, 30)
	end
	activeTab = idx
end

local tabKeys = {"tab_home", "tab_main", "tab_visual", "tab_admin", "tab_hub", "tab_setting", "tab_lang"}

for i, key2 in ipairs(tabKeys) do
	local page = createPage()
	pages[i] = page

	local btn = Instance.new("TextButton", sidebar)
	btn.Size = UDim2.new(0, 52, 0, 38)
	btn.BackgroundColor3 = Color3.fromRGB(12, 12, 30)
	btn.TextColor3 = Color3.fromRGB(0, 180, 255)
	btn.TextScaled = true
	btn.Font = Enum.Font.GothamBold
	btn.Text = currentLang[key2]
	btn.BorderSizePixel = 0
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
	tabBtns[i] = btn
	btn.MouseButton1Click:Connect(function() switchTab(i) end)
end

switchTab(1)

-- ══════════════════════════════
--  HELPER BUILDERS
-- ══════════════════════════════
local homePage    = pages[1]
local mainPage    = pages[2]
local visualPage  = pages[3]
local adminPage   = pages[4]
local hubPage     = pages[5]
local settingPage = pages[6]
local langPage    = pages[7]

local function createInfoBox(parent, textKey, color)
	local lbl = Instance.new("TextLabel", parent)
	lbl.Size = UDim2.new(1, -4, 0, 0)
	lbl.AutomaticSize = Enum.AutomaticSize.Y
	lbl.BackgroundColor3 = Color3.fromRGB(12, 12, 28)
	lbl.TextColor3 = color or Color3.fromRGB(180, 220, 255)
	lbl.Font = Enum.Font.Gotham
	lbl.TextScaled = false
	lbl.TextSize = 13
	lbl.TextWrapped = true
	lbl.RichText = true
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	lbl.Text = currentLang[textKey]
	lbl.BorderSizePixel = 0
	Instance.new("UICorner", lbl).CornerRadius = UDim.new(0, 8)
	local pad = Instance.new("UIPadding", lbl)
	pad.PaddingLeft = UDim.new(0, 8)
	pad.PaddingRight = UDim.new(0, 8)
	pad.PaddingTop = UDim.new(0, 6)
	pad.PaddingBottom = UDim.new(0, 6)
	return lbl
end

local function createButton(parent, labelKey, callback)
	local btn = Instance.new("TextButton", parent)
	btn.Size = UDim2.new(1, -4, 0, 32)
	btn.BackgroundColor3 = Color3.fromRGB(0, 80, 170)
	btn.TextColor3 = Color3.new(1,1,1)
	btn.TextScaled = true
	btn.Font = Enum.Font.GothamBold
	btn.Text = currentLang[labelKey] or labelKey
	btn.BorderSizePixel = 0
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
	btn.MouseButton1Click:Connect(function()
		TweenService:Create(btn, TweenInfo.new(0.1), {BackgroundColor3=Color3.fromRGB(0,140,255)}):Play()
		task.wait(0.1)
		TweenService:Create(btn, TweenInfo.new(0.15), {BackgroundColor3=Color3.fromRGB(0,80,170)}):Play()
		callback()
	end)
	return btn
end

local function createStaticButton(parent, label, _, callback)
	local btn = Instance.new("TextButton", parent)
	btn.Size = UDim2.new(1, -4, 0, 32)
	btn.BackgroundColor3 = Color3.fromRGB(20, 50, 110)
	btn.TextColor3 = Color3.new(1,1,1)
	btn.TextScaled = true
	btn.Font = Enum.Font.GothamBold
	btn.Text = "⊕  " .. label
	btn.BorderSizePixel = 0
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
	btn.MouseButton1Click:Connect(function()
		TweenService:Create(btn, TweenInfo.new(0.1), {BackgroundColor3=Color3.fromRGB(0,120,255)}):Play()
		task.wait(0.1)
		TweenService:Create(btn, TweenInfo.new(0.15), {BackgroundColor3=Color3.fromRGB(20,50,110)}):Play()
		callback()
	end)
	return btn
end

local toggleRefs = {}
local function createToggle(parent, labelKey, callback)
	local row = Instance.new("Frame", parent)
	row.Size = UDim2.new(1, -4, 0, 32)
	row.BackgroundColor3 = Color3.fromRGB(12, 12, 30)
	row.BorderSizePixel = 0
	Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)

	local lbl = Instance.new("TextLabel", row)
	lbl.Size = UDim2.new(1, -50, 1, 0)
	lbl.Position = UDim2.new(0, 8, 0, 0)
	lbl.BackgroundTransparency = 1
	lbl.TextColor3 = Color3.fromRGB(180, 220, 255)
	lbl.Font = Enum.Font.Gotham
	lbl.TextScaled = true
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	lbl.Text = currentLang[labelKey] or labelKey

	local tog = Instance.new("TextButton", row)
	tog.Size = UDim2.new(0, 40, 0, 20)
	tog.Position = UDim2.new(1, -46, 0.5, -10)
	tog.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
	tog.Text = "◉"
	tog.TextColor3 = Color3.fromRGB(100,100,120)
	tog.Font = Enum.Font.GothamBold
	tog.TextScaled = true
	tog.BorderSizePixel = 0
	Instance.new("UICorner", tog).CornerRadius = UDim.new(1, 0)

	local on = false
	tog.MouseButton1Click:Connect(function()
		on = not on
		tog.BackgroundColor3 = on and Color3.fromRGB(0,160,255) or Color3.fromRGB(60,60,80)
		tog.TextColor3 = on and Color3.new(1,1,1) or Color3.fromRGB(100,100,120)
		tog.Text = on and "◈" or "◉"
		callback(on)
	end)
	toggleRefs[labelKey] = {lbl=lbl, tog=tog}
	return row
end

local inputRefs = {}
local function createInput(parent, labelKey, phKey, maxVal, callback)
	local col = Instance.new("Frame", parent)
	col.Size = UDim2.new(1, -4, 0, 62)
	col.BackgroundTransparency = 1
	col.BorderSizePixel = 0
	local cl = Instance.new("UIListLayout", col)
	cl.Padding = UDim.new(0, 2)

	local lbl = Instance.new("TextLabel", col)
	lbl.Size = UDim2.new(1, 0, 0, 20)
	lbl.BackgroundTransparency = 1
	lbl.TextColor3 = Color3.fromRGB(140, 200, 255)
	lbl.Font = Enum.Font.Gotham
	lbl.TextScaled = true
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	lbl.Text = currentLang[labelKey] or labelKey

	local row = Instance.new("Frame", col)
	row.Size = UDim2.new(1, 0, 0, 36)
	row.BackgroundTransparency = 1
	local rl = Instance.new("UIListLayout", row)
	rl.FillDirection = Enum.FillDirection.Horizontal
	rl.Padding = UDim.new(0, 4)

	local box = Instance.new("TextBox", row)
	box.Size = UDim2.new(0.65, 0, 1, 0)
	box.PlaceholderText = currentLang[phKey] or ""
	box.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
	box.TextColor3 = Color3.new(1,1,1)
	box.TextScaled = true
	box.Font = Enum.Font.Gotham
	box.ClearTextOnFocus = false
	Instance.new("UICorner", box).CornerRadius = UDim.new(0, 8)

	local setBtn2 = Instance.new("TextButton", row)
	setBtn2.Size = UDim2.new(0.17, 0, 1, 0)
	setBtn2.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
	setBtn2.TextColor3 = Color3.new(1,1,1)
	setBtn2.TextScaled = true
	setBtn2.Font = Enum.Font.GothamBold
	setBtn2.Text = currentLang.set_btn or "Set"
	Instance.new("UICorner", setBtn2).CornerRadius = UDim.new(0, 8)
	setBtn2.MouseButton1Click:Connect(function()
		local v = tonumber(box.Text)
		if v then callback(math.clamp(v, 1, maxVal), false) end
	end)

	local rstBtn = Instance.new("TextButton", row)
	rstBtn.Size = UDim2.new(0.15, -4, 1, 0)
	rstBtn.BackgroundColor3 = Color3.fromRGB(80, 30, 30)
	rstBtn.TextColor3 = Color3.new(1,1,1)
	rstBtn.TextScaled = true
	rstBtn.Font = Enum.Font.GothamBold
	rstBtn.Text = "↺"
	Instance.new("UICorner", rstBtn).CornerRadius = UDim.new(0, 8)
	rstBtn.MouseButton1Click:Connect(function() callback(0, true) end)

	inputRefs[labelKey] = {lbl=lbl, box=box, setBtn=setBtn2}
	return col
end

local labelRefs = {}
local function createLabel(parent, textKey, color)
	local lbl = Instance.new("TextLabel", parent)
	lbl.Size = UDim2.new(1, -4, 0, 0)
	lbl.AutomaticSize = Enum.AutomaticSize.Y
	lbl.BackgroundTransparency = 1
	lbl.TextColor3 = color or Color3.fromRGB(180, 220, 255)
	lbl.Font = Enum.Font.GothamBold
	lbl.TextSize = 14
	lbl.TextWrapped = true
	lbl.RichText = true
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	lbl.Text = currentLang[textKey] or ""
	lbl.BorderSizePixel = 0
	labelRefs[textKey] = lbl
	return lbl
end

-- Apply language function
local function applyLanguage(lang)
	currentLang = lang
	titleLabel.Text = lang.hub_title
	watermark.Text = lang.watermark
	for i, key3 in ipairs(tabKeys) do
		tabBtns[i].Text = lang[key3]
	end
	-- Info boxes
	for _, ref in pairs(labelRefs) do
		-- update handled per-key below
	end
	-- Re-render pages (simple approach: update all text refs)
	for k, ref in pairs(toggleRefs) do
		if ref.lbl and lang[k] then ref.lbl.Text = lang[k] end
	end
	for k, ref in pairs(inputRefs) do
		if ref.lbl and lang[k] then ref.lbl.Text = lang[k] end
		if ref.setBtn then ref.setBtn.Text = lang.set_btn or "Set" end
	end
end

-- ══════════════════════════════
--  HOME PAGE
-- ══════════════════════════════
createInfoBox(homePage, "home1", Color3.fromRGB(0, 200, 255))
createInfoBox(homePage, "home2", Color3.fromRGB(160, 220, 255))
createInfoBox(homePage, "home3", Color3.fromRGB(255, 220, 100))
createInfoBox(homePage, "home4", Color3.fromRGB(255, 120, 120))
createInfoBox(homePage, "home5", Color3.fromRGB(120, 220, 180))

-- ══════════════════════════════
--  MAIN PAGE (Scripts)
-- ══════════════════════════════
-- Search bar
local searchBox = Instance.new("TextBox", mainPage)
searchBox.Size = UDim2.new(1, -4, 0, 30)
searchBox.PlaceholderText = currentLang.search_ph
searchBox.BackgroundColor3 = Color3.fromRGB(15, 15, 35)
searchBox.TextColor3 = Color3.new(1,1,1)
searchBox.TextScaled = true
searchBox.Font = Enum.Font.Gotham
searchBox.ClearTextOnFocus = false
Instance.new("UICorner", searchBox).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", searchBox).Color = Color3.fromRGB(0, 100, 180)

-- Filter row
local filterRow = Instance.new("Frame", mainPage)
filterRow.Size = UDim2.new(1, -4, 0, 26)
filterRow.BackgroundTransparency = 1
filterRow.BorderSizePixel = 0
local frl = Instance.new("UIListLayout", filterRow)
frl.FillDirection = Enum.FillDirection.Horizontal
frl.Padding = UDim.new(0, 3)

local filterKeys = {"filter_all","filter_bloxfruit","filter_tsb","filter_doors","filter_arsenal","filter_mm2","filter_brookhaven","filter_universal"}
local activeFilter = "all"
local filterBtns2 = {}

for _, fk in ipairs(filterKeys) do
	local tag = fk:gsub("filter_","")
	local fb = Instance.new("TextButton", filterRow)
	fb.Size = UDim2.new(0, 70, 1, 0)
	fb.BackgroundColor3 = Color3.fromRGB(15, 15, 40)
	fb.TextColor3 = Color3.fromRGB(140, 200, 255)
	fb.TextScaled = true
	fb.Font = Enum.Font.Gotham
	fb.Text = currentLang[fk]
	fb.BorderSizePixel = 0
	Instance.new("UICorner", fb).CornerRadius = UDim.new(0, 6)
	filterBtns2[fk] = fb
	fb.MouseButton1Click:Connect(function()
		activeFilter = tag
		for _, b in pairs(filterBtns2) do
			b.BackgroundColor3 = Color3.fromRGB(15,15,40)
		end
		fb.BackgroundColor3 = Color3.fromRGB(0,100,200)
	end)
end

-- Scripts list
local scripts = {
	{name="Blox Fruits Auto Farm", game="bloxfruit", url="https://pastebin.com/raw/example1"},
	{name="Blox Fruits Devil Fruit", game="bloxfruit", url="https://pastebin.com/raw/example2"},
	{name="TSB Auto Win", game="tsb", url="https://pastebin.com/raw/example3"},
	{name="Doors ESP", game="doors", url="https://pastebin.com/raw/example4"},
	{name="Arsenal Aimbot", game="arsenal", url="https://pastebin.com/raw/example5"},
	{name="MM2 God Mode", game="mm2", url="https://pastebin.com/raw/example6"},
	{name="Brookhaven Admin", game="brookhaven", url="https://pastebin.com/raw/example7"},
	{name="Universal ESP", game="universal", url="https://pastebin.com/raw/example8"},
	{name="Universal Speed", game="universal", url="https://pastebin.com/raw/example9"},
}

for _, sc in ipairs(scripts) do
	local sb2 = Instance.new("TextButton", mainPage)
	sb2.Size = UDim2.new(1, -4, 0, 30)
	sb2.BackgroundColor3 = Color3.fromRGB(10, 20, 50)
	sb2.TextColor3 = Color3.new(1,1,1)
	sb2.TextScaled = true
	sb2.Font = Enum.Font.Gotham
	sb2.TextXAlignment = Enum.TextXAlignment.Left
	sb2.Text = "  ≡  " .. sc.name
	sb2.BorderSizePixel = 0
	Instance.new("UICorner", sb2).CornerRadius = UDim.new(0, 8)
	sb2.MouseButton1Click:Connect(function()
		pcall(function()
			loadstring(game:HttpGet(sc.url))()
		end)
	end)
end

-- ══════════════════════════════
--  VISUAL PAGE
-- ══════════════════════════════
createToggle(visualPage, "blur", function(on)
	for _,v in pairs(game:GetService("Lighting"):GetChildren()) do
		if v:IsA("BlurEffect") then v:Destroy() end
	end
	if on then
		local b = Instance.new("BlurEffect", game:GetService("Lighting"))
		b.Size = 15
	end
end)
createToggle(visualPage, "neon", function(on)
	local l = game:GetService("Lighting")
	if on then
		l.Ambient = Color3.fromRGB(0,100,200)
		l.ClockTime = 0
		l.FogEnd = 500
		l.FogColor = Color3.fromRGB(0,20,80)
	else
		l.Ambient = Color3.fromRGB(70,70,70)
		l.ClockTime = 14
		l.FogEnd = 100000
	end
end)
createToggle(visualPage, "rainbow", function(on)
	getgenv().rainbowOn = on
	if on then
		task.spawn(function()
			local l = game:GetService("Lighting")
			local hue = 0
			while getgenv().rainbowOn do
				hue = (hue + 0.005) % 1
				l.Ambient = Color3.fromHSV(hue, 0.8, 1)
				task.wait(0.05)
			end
		end)
	end
end)
createButton(visualPage, "daytime", function() game:GetService("Lighting").ClockTime = 12 end)
createButton(visualPage, "nighttime", function() game:GetService("Lighting").ClockTime = 0 end)
createButton(visualPage, "reset_light", function()
	local l = game:GetService("Lighting")
	l.Brightness=1; l.ClockTime=14; l.FogEnd=100000
	l.GlobalShadows=true; l.Ambient=Color3.fromRGB(70,70,70)
end)
createButton(visualPage, "esp", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/AnsfEGXy"))()
end)
createButton(visualPage, "pshade", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua"))()
end)

-- ══════════════════════════════
--  ADMIN PAGE
-- ══════════════════════════════
createButton(adminPage, "fly", function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fly-GUI-112254"))()
end)
createButton(adminPage, "godmode", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/real-script/MyOwnGodModeScript/refs/heads/main/lua"))()
end)
createButton(adminPage, "cmdx", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))()
end)
createInput(adminPage, "ws_label", "ws_ph", 500, function(val, reset)
	local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	if hum then hum.WalkSpeed = reset and 16 or val end
end)
createInput(adminPage, "jp_label", "jp_ph", 1000, function(val, reset)
	local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	if hum then hum.UseJumpPower = true; hum.JumpPower = reset and 50 or val end
end)
createToggle(adminPage, "inf_jump", function(on)
	getgenv().infJumpOn = on
end)
game:GetService("UserInputService").JumpRequest:Connect(function()
	if getgenv().infJumpOn then
		local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
	end
end)
createToggle(adminPage, "noclip", function(on)
	getgenv().noclipOn = on
end)
game:GetService("RunService").Stepped:Connect(function()
	if getgenv().noclipOn then
		local char = game.Players.LocalPlayer.Character
		if char then
			for _,v in pairs(char:GetDescendants()) do
				if v:IsA("BasePart") then v.CanCollide = false end
			end
		end
	end
end)
createButton(adminPage, "anti_afk", function()
	local vu = game:GetService("VirtualUser")
	game.Players.LocalPlayer.Idled:Connect(function()
		vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
		task.wait(1)
		vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
	end)
end)
createButton(adminPage, "rejoin", function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)
createToggle(adminPage, "fullbright", function(on)
	game:GetService("Lighting").Brightness = on and 10 or 1
end)
createToggle(adminPage, "no_fog", function(on)
	game:GetService("Lighting").FogEnd = on and 100000 or 1000
end)

-- ══════════════════════════════
--  HUB PAGE (Other Hubs)
-- ══════════════════════════════
createStaticButton(hubPage, "Speed Hub", "all", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
end)
createStaticButton(hubPage, "Chiyo Hub", "all", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
end)
createStaticButton(hubPage, "Hoho Hub", "all", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
end)
createStaticButton(hubPage, "Domain X Hub", "all", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/DomainX/main/source"))()
end)
createStaticButton(hubPage, "Orion UI Demo", "all", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
end)
createStaticButton(hubPage, "Thunder Client Hub", "all", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderClient/ThunderClient/main/source.lua"))()
end)
createStaticButton(hubPage, "Rayfield UI", "all", function()
	loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
end)
createStaticButton(hubPage, "Linoria Lib", "all", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua"))()
end)
createStaticButton(hubPage, "Kavo UI Lib", "all", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
end)

-- ══════════════════════════════
--  SETTING PAGE
-- ══════════════════════════════
createToggle(settingPage, "auto_exec", function(on)
	getgenv().autoExecOn = on
	if on then
		game.Players.LocalPlayer.CharacterAdded:Connect(function()
			if getgenv().autoExecOn then
				task.wait(2)
				getgenv().DirzzzHubLoaded = false
			end
		end)
	end
end)
createToggle(settingPage, "fix_lag", function(on)
	local l = game:GetService("Lighting")
	if on then
		l.GlobalShadows = false; l.FogEnd = 100000; l.Brightness = 1
		for _,v in pairs(game:GetDescendants()) do
			if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then v.Enabled = false end
			if v:IsA("Texture") or v:IsA("Decal") then v.Transparency = 1 end
			if v:IsA("BasePart") then v.Material = Enum.Material.Plastic; v.Reflectance = 0; v.CastShadow = false end
		end
		for _,v in pairs(l:GetChildren()) do
			if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("BloomEffect") then v:Destroy() end
		end
		settings().Rendering.QualityLevel = 1
	else
		settings().Rendering.QualityLevel = 10
	end
end)
createToggle(settingPage, "shaders", function(on)
	local l = game:GetService("Lighting")
	for _,v in pairs(l:GetChildren()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end
	end
	if on then
		local bloom = Instance.new("BloomEffect", l); bloom.Intensity=0.8; bloom.Size=24; bloom.Threshold=0.95
		local sr = Instance.new("SunRaysEffect", l); sr.Intensity=0.25; sr.Spread=0.5
		local cc = Instance.new("ColorCorrectionEffect", l); cc.Brightness=0.05; cc.Contrast=0.15; cc.Saturation=0.2; cc.TintColor=Color3.fromRGB(220,235,255)
		l.GlobalShadows=true; l.Brightness=2; l.ClockTime=14
		l.EnvironmentDiffuseScale=1; l.EnvironmentSpecularScale=1
		settings().Rendering.QualityLevel = 21
	else
		settings().Rendering.QualityLevel = 10
	end
end)

-- ══════════════════════════════
--  LANGUAGE PAGE
-- ══════════════════════════════
createLabel(langPage, "lang_title", Color3.fromRGB(0, 200, 255))
createLabel(langPage, "lang_desc", Color3.fromRGB(120, 160, 200))

local langList = {
	{code="EN", color=Color3.fromRGB(0,70,180)},
	{code="ID", color=Color3.fromRGB(180,30,30)},
	{code="JP", color=Color3.fromRGB(160,30,60)},
	{code="AR", color=Color3.fromRGB(0,120,40)},
	{code="MY", color=Color3.fromRGB(0,60,140)},
	{code="CN", color=Color3.fromRGB(160,20,20)},
	{code="JV", color=Color3.fromRGB(100,60,20)},
	{code="DK", color=Color3.fromRGB(20,110,50)},
}

for _, l2 in ipairs(langList) do
	local lang2 = languages[l2.code]
	local langBtn = Instance.new("TextButton", langPage)
	langBtn.Size = UDim2.new(1, -8, 0, 36)
	langBtn.Text = lang2.flag .. "  " .. lang2.name
	langBtn.BackgroundColor3 = l2.color
	langBtn.TextColor3 = Color3.new(1,1,1)
	langBtn.TextScaled = true
	langBtn.Font = Enum.Font.GothamBold
	langBtn.TextXAlignment = Enum.TextXAlignment.Left
	Instance.new("UICorner", langBtn).CornerRadius = UDim.new(0, 6)
	local lp2 = Instance.new("UIPadding", langBtn)
	lp2.PaddingLeft = UDim.new(0, 12)
	Instance.new("UIStroke", langBtn).Color = Color3.fromRGB(0, 100, 180)
	langBtn.MouseButton1Click:Connect(function()
		TweenService:Create(langBtn, TweenInfo.new(0.1), {Size=UDim2.new(1,-8,0,26)}):Play()
		task.wait(0.1)
		TweenService:Create(langBtn, TweenInfo.new(0.2, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {Size=UDim2.new(1,-8,0,36)}):Play()
		applyLanguage(lang2)
	end)
end

-- ══════════════════════════════
--  DONE
-- ══════════════════════════════
StarterGui:SetCore("SendNotification", {
	Title = "◈ Drizzz Hub",
	Text = "⟦+⟧ Loaded! by absorpohonods",
	Duration = 4,
})
