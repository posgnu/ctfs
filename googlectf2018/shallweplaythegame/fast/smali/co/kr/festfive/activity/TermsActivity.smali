.class public Lco/kr/festfive/activity/TermsActivity;
.super Landroid/app/Activity;
.source "TermsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/TermListItem;",
            ">;"
        }
    .end annotation
.end field

.field private backButtonLinear:Landroid/widget/TextView;

.field private expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private termsExAdapter:Lco/kr/festfive/adapter/TermsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/TermsActivity;->arrayList:Ljava/util/ArrayList;

    .line 29
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/TermsActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/TermsActivity;)Lco/kr/festfive/model/AnimatedExpandableListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/TermsActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lco/kr/festfive/activity/TermsActivity;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/TermsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/TermsActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lco/kr/festfive/activity/TermsActivity;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public ReadTextAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v4, 0x0

    .line 115
    .local v4, "text":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/TermsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 116
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 117
    .local v3, "size":I
    new-array v0, v3, [B

    .line 118
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 119
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 121
    new-instance v4, Ljava/lang/String;

    .end local v4    # "text":Ljava/lang/String;
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .restart local v4    # "text":Ljava/lang/String;
    return-object v4

    .line 122
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "size":I
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080022

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lco/kr/festfive/activity/TermsActivity;->finish()V

    .line 109
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v5, 0x7f0a0038

    invoke-virtual {p0, v5}, Lco/kr/festfive/activity/TermsActivity;->setContentView(I)V

    .line 37
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 38
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 42
    :cond_0
    const v5, 0x7f080022

    invoke-virtual {p0, v5}, Lco/kr/festfive/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lco/kr/festfive/activity/TermsActivity;->backButtonLinear:Landroid/widget/TextView;

    .line 43
    iget-object v5, p0, Lco/kr/festfive/activity/TermsActivity;->backButtonLinear:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v5, 0x7f08009f

    invoke-virtual {p0, v5}, Lco/kr/festfive/activity/TermsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/model/AnimatedExpandableListView;

    iput-object v5, p0, Lco/kr/festfive/activity/TermsActivity;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    .line 47
    iget-object v5, p0, Lco/kr/festfive/activity/TermsActivity;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    new-instance v6, Lco/kr/festfive/activity/TermsActivity$1;

    invoke-direct {v6, p0}, Lco/kr/festfive/activity/TermsActivity$1;-><init>(Lco/kr/festfive/activity/TermsActivity;)V

    invoke-virtual {v5, v6}, Lco/kr/festfive/model/AnimatedExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 71
    const-string v5, "terms.txt"

    invoke-virtual {p0, v5}, Lco/kr/festfive/activity/TermsActivity;->ReadTextAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "termContent":Ljava/lang/String;
    const-string v5, "\n"

    const-string v6, "<br>"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 73
    const-string v5, "personalData.html"

    invoke-virtual {p0, v5}, Lco/kr/festfive/activity/TermsActivity;->ReadTextAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "personalDataContent":Ljava/lang/String;
    new-array v2, v7, [[Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "\uc57d\uad00\uc548\ub0b4"

    aput-object v6, v5, v9

    aput-object v4, v5, v10

    aput-object v5, v2, v9

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "\uac1c\uc778\uc815\ubcf4\ucde8\uae09\ubc29\uce68"

    aput-object v6, v5, v9

    aput-object v3, v5, v10

    aput-object v5, v2, v10

    .line 83
    .local v2, "list":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 84
    iget-object v5, p0, Lco/kr/festfive/activity/TermsActivity;->arrayList:Ljava/util/ArrayList;

    new-instance v6, Lco/kr/festfive/model/TermListItem;

    aget-object v7, v2, v1

    aget-object v7, v7, v9

    aget-object v8, v2, v1

    aget-object v8, v8, v10

    invoke-direct {v6, v7, v8}, Lco/kr/festfive/model/TermListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    new-instance v5, Lco/kr/festfive/adapter/TermsAdapter;

    iget-object v6, p0, Lco/kr/festfive/activity/TermsActivity;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6}, Lco/kr/festfive/adapter/TermsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lco/kr/festfive/activity/TermsActivity;->termsExAdapter:Lco/kr/festfive/adapter/TermsAdapter;

    .line 89
    iget-object v5, p0, Lco/kr/festfive/activity/TermsActivity;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    iget-object v6, p0, Lco/kr/festfive/activity/TermsActivity;->termsExAdapter:Lco/kr/festfive/adapter/TermsAdapter;

    invoke-virtual {v5, v6}, Lco/kr/festfive/model/AnimatedExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 91
    iget-object v5, p0, Lco/kr/festfive/activity/TermsActivity;->termsExAdapter:Lco/kr/festfive/adapter/TermsAdapter;

    invoke-virtual {v5}, Lco/kr/festfive/adapter/TermsAdapter;->getGroupCount()I

    move-result v0

    .line 92
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 93
    iget-object v5, p0, Lco/kr/festfive/activity/TermsActivity;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    invoke-virtual {v5, v9}, Lco/kr/festfive/model/AnimatedExpandableListView;->expandGroup(I)Z

    .line 96
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    return-void
.end method
