namespace 药材市场中药饮片图鉴;

[Activity(Label = "@string/app_name", MainLauncher = true)]
public sealed class MainActivity : Activity
{
    private readonly List<Herb> herbs = [];
    private int currentIndex = 0;

    private ImageView? herbImage;
    private TextView? txtName, txtLatinName, txtProperties, txtUsage, txtDetailsTitle;
    private Button? btnPrev, btnNext, btnMoreInfo, btnGoBack;

    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        InitializeHerbs();
        ShowMainPage(null, EventArgs.Empty);
    }

    private void ShowMainPage(object? sender, EventArgs e)
    {
        SetContentView(Resource.Layout.activity_main);

        herbImage = FindViewById<ImageView>(Resource.Id.herbImage);
        txtName = FindViewById<TextView>(Resource.Id.txtName);
        txtLatinName = FindViewById<TextView>(Resource.Id.txtLatinName);
        txtProperties = FindViewById<TextView>(Resource.Id.txtProperties);
        txtUsage = FindViewById<TextView>(Resource.Id.txtUsage);

        btnPrev = FindViewById<Button>(Resource.Id.btnPrev);
        btnNext = FindViewById<Button>(Resource.Id.btnNext);
        btnMoreInfo = FindViewById<Button>(Resource.Id.btnMoreInfo);

        if (btnPrev is null || btnNext is null || btnMoreInfo is null)
            return;

        btnPrev.Click += ShowPrevious;
        btnNext.Click += ShowNext;
        btnMoreInfo.Click += ShowDetails;

        UpdateDisplay();
    }

    public void ShowDetails(object? sender, EventArgs e)
    {
        SetContentView(Resource.Layout.medicine_details);
        btnGoBack = FindViewById<Button>(Resource.Id.btnGoBack);
        if (btnGoBack is not null)
            btnGoBack.Click += ShowMainPage;

        Herb herb = herbs[currentIndex];
        txtDetailsTitle = FindViewById<TextView>(Resource.Id.txtDetailsTitle);
        ArgumentNullException.ThrowIfNull(txtDetailsTitle);

        txtDetailsTitle.Text = $"{herb.Name} - 详细信息";

        var herbImage = FindViewById<ImageView>(Resource.Id.herbImage);
        herbImage?.SetImageResource(herb.ImageResId);

        string htmlContent = herb.GetDetailedInformation();
        var webView = FindViewById<Android.Webkit.WebView>(Resource.Id.webViewDetails);
        ArgumentNullException.ThrowIfNull(webView);

        webView.LoadData(htmlContent, "text/html; charset=utf-8", "UTF-8");
    }

    private void ShowPrevious(object? sender, EventArgs e)
    {
        currentIndex--;
        if (currentIndex < 0)
            currentIndex = herbs.Count - 1;
        UpdateDisplay();
    }

    private void ShowNext(object? sender, EventArgs e)
    {
        currentIndex++;
        if (currentIndex >= herbs.Count)
            currentIndex = 0;
        UpdateDisplay();
    }

    private void UpdateDisplay()
    {
        if (txtName is null || txtLatinName is null || txtProperties is null || txtUsage is null)
            return;

        var currentHerb = herbs[currentIndex];
        herbImage?.SetImageResource(currentHerb.ImageResId);
        txtName.Text = currentHerb.Name;
        txtLatinName.Text = currentHerb.LatinName;
        txtProperties.Text = $"【性味归经】{currentHerb.Properties}";
        txtUsage.Text = $"【用法用量】{currentHerb.Usage}";
    }

    private void InitializeHerbs()
    {
        herbs.Add(new()
        {
            Name = "雪梨干",
            LatinName = "Pyrus pyrifolia",
            Properties = "甘、微苦，微温。归脾、肺经",
            Usage = "9\uff5e15g，煎服",
            ImageResId = Resource.Drawable.pyrus_pyrifolia
        });

        herbs.Add(new()
        {
            Name = "桃胶",
            LatinName = "Prunus persica",
            Properties = "甘、平、无毒。归大肠、膀胱经",
            Usage = "15\uff5e30g，烊化兑服。或入丸、散",
            ImageResId = Resource.Drawable.prunus_persica
        });

        herbs.Add(new()
        {
            Name = "铁皮石斛",
            LatinName = "Dendrobium officinale",
            Properties = "甘、淡，微寒。归胃、肾经",
            Usage = "6\uff5e12g，煎服",
            ImageResId = Resource.Drawable.dendrobium_officinale
        });

        herbs.Add(new()
        {
            Name = "三七",
            LatinName = "Panax notoginseng",
            Properties = "甘、微苦，温。归肝、胃经",
            Usage = "3\uff5e9g，煎服；或研粉吞服，一次1\uff5e3g；外用适量。",
            ImageResId = Resource.Drawable.panax_notoginseng
        });

        herbs.Add(new()
        {
            Name = "莲子",
            LatinName = "Nelumbo nucifera",
            Properties = "甘、涩，平。归脾、肾、心经",
            Usage = "9\uff5e15g，煎服",
            ImageResId = Resource.Drawable.nelumbo_nucifera
        });

        herbs.Add(new()
        {
            Name = "山药",
            LatinName = "Dioscorea opposita",
            Properties = "甘，平。归脾、肺、肾经",
            Usage = "15\uff5e30g，煎服",
            ImageResId = Resource.Drawable.dioscorea_opposita
        });

        herbs.Add(new()
        {
            Name = "茯苓",
            LatinName = "Wolfiporia cocos",
            Properties = "甘、淡，平。归心、脾、肾经",
            Usage = "10\uff5e15g，煎服",
            ImageResId = Resource.Drawable.wolfiporia_cocos
        });

        herbs.Add(new()
        {
            Name = "百合",
            LatinName = "Lilium brownii",
            Properties = "甘，寒。归心、肺经",
            Usage = "6\uff5e12g，煎服",
            ImageResId = Resource.Drawable.lilium_brownii
        });

        herbs.Add(new()
        {
            Name = "山楂",
            LatinName = "Crataegus pinnatifida",
            Properties = "酸、甘，微温。归脾、胃、肝经",
            Usage = "9\uff5e12g，煎服",
            ImageResId = Resource.Drawable.crataegus_pinnatifida
        });

        herbs.Add(new()
        {
            Name = "野菊花",
            LatinName = "Chrysanthemum indicum",
            Properties = "苦、辛，微寒。归肝、心经",
            Usage = "9\uff5e15g，煎服；或外用适量，煎汤外洗或制膏外涂",
            ImageResId = Resource.Drawable.chrysanthemum_indicum
        });

        herbs.Add(new()
        {
            Name = "玫瑰花",
            LatinName = "Rosa rugosa",
            Properties = "甘、微苦，温。归肝、脾经",
            Usage = "3\uff5e6g，煎服",
            ImageResId = Resource.Drawable.rosa_rugosa
        });

        herbs.Add(new()
        {
            Name = "陈皮",
            LatinName = "Citrus reticulata",
            Properties = "苦、辛，温。归脾、肺经",
            Usage = "3\uff5e10g，煎服",
            ImageResId = Resource.Drawable.citrus_reticulata
        });

        herbs.Add(new()
        {
            Name = "五指毛桃",
            LatinName = "Ficushirta Vahl",
            Properties = "甘，平。归脾、肺、胃、大肠、肝经",
            Usage = "15\uff5e30g，煎服",
            ImageResId = Resource.Drawable.ficushirta_vahl
        });

        herbs.Add(new()
        {
            Name = "海麻雀",
            LatinName = "Pegasus laternarius",
            Properties = "甘，平。归肺，肝经",
            Usage = "10\uff5e15g，煎服",
            ImageResId = Resource.Drawable.pegasus_laternarius
        });

        herbs.Add(new()
        {
            Name = "黄芪",
            LatinName = "Astragalus membranaceus",
            Properties = "甘，微温。归肺、脾经",
            Usage = "9\uff5e30g，煎服",
            ImageResId = Resource.Drawable.astragalus_membranaceus
        });
    }
}

public sealed record Herb
{
    public required string Name;
    public required string LatinName;
    public required string Properties;
    public required string Usage;
    public required int ImageResId;

    public string GetDetailedInformation()
    {
        string[] words = LatinName.ToLower().Split(' ');
        string filename = words[0] + "_" + words[1] + ".html";
        string resourceName = $"药材市场中药饮片图鉴.Resources.information.{filename}";
        using var stream = GetType().Assembly.GetManifestResourceStream(resourceName);
        using var reader = new StreamReader(stream ?? throw new FileNotFoundException());
        return System.Web.HttpUtility.HtmlDecode(reader.ReadToEnd());
    }
}