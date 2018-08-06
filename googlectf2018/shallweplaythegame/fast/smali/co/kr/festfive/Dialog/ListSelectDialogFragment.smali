.class public Lco/kr/festfive/Dialog/ListSelectDialogFragment;
.super Landroid/app/DialogFragment;
.source "ListSelectDialogFragment.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lco/kr/festfive/Dialog/ListSelectDialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/Dialog/ListSelectDialogFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/Dialog/ListSelectDialogFragment;

    .prologue
    .line 16
    iget-object v0, p0, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lco/kr/festfive/Dialog/ListSelectDialogFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v1, Lco/kr/festfive/Dialog/ListSelectDialogFragment;

    invoke-direct {v1}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;-><init>()V

    .line 23
    .local v1, "listSelectDialogFragment":Lco/kr/festfive/Dialog/ListSelectDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "bundles":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v0}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public addItem(Lco/kr/festfive/Dialog/ListSelectDialogItem;)V
    .locals 1
    .param p1, "item"    # Lco/kr/festfive/Dialog/ListSelectDialogItem;

    .prologue
    .line 70
    iget-object v0, p0, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->title:Ljava/lang/String;

    .line 38
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "arrFeeling":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/Dialog/ListSelectDialogItem;

    .line 44
    .local v3, "item":Lco/kr/festfive/Dialog/ListSelectDialogItem;
    invoke-virtual {v3}, Lco/kr/festfive/Dialog/ListSelectDialogItem;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v3    # "item":Lco/kr/festfive/Dialog/ListSelectDialogItem;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 48
    .local v2, "feelingArray":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lco/kr/festfive/Dialog/ListSelectDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    new-instance v6, Lco/kr/festfive/Dialog/ListSelectDialogFragment$2;

    invoke-direct {v6, p0}, Lco/kr/festfive/Dialog/ListSelectDialogFragment$2;-><init>(Lco/kr/festfive/Dialog/ListSelectDialogFragment;)V

    .line 50
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "\ucde8\uc18c"

    new-instance v6, Lco/kr/festfive/Dialog/ListSelectDialogFragment$1;

    invoke-direct {v6, p0}, Lco/kr/festfive/Dialog/ListSelectDialogFragment$1;-><init>(Lco/kr/festfive/Dialog/ListSelectDialogFragment;)V

    .line 60
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
