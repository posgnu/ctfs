.class Lco/kr/festfive/adapter/UserGuideAdapter$1;
.super Ljava/lang/Object;
.source "UserGuideAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/UserGuideAdapter;->getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/UserGuideAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/UserGuideAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/UserGuideAdapter;

    .prologue
    .line 138
    iput-object p1, p0, Lco/kr/festfive/adapter/UserGuideAdapter$1;->this$0:Lco/kr/festfive/adapter/UserGuideAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 141
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lco/kr/festfive/adapter/UserGuideAdapter$1;->this$0:Lco/kr/festfive/adapter/UserGuideAdapter;

    invoke-static {v2}, Lco/kr/festfive/adapter/UserGuideAdapter;->access$000(Lco/kr/festfive/adapter/UserGuideAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    .local v1, "alert_confirm":Landroid/app/AlertDialog$Builder;
    const-string v2, "\uae00 \ubcf5\uc0ac\ud558\uae30"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\ud655\uc778"

    new-instance v4, Lco/kr/festfive/adapter/UserGuideAdapter$1$2;

    invoke-direct {v4, p0, p1}, Lco/kr/festfive/adapter/UserGuideAdapter$1$2;-><init>(Lco/kr/festfive/adapter/UserGuideAdapter$1;Landroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\ucde8\uc18c"

    new-instance v4, Lco/kr/festfive/adapter/UserGuideAdapter$1$1;

    invoke-direct {v4, p0}, Lco/kr/festfive/adapter/UserGuideAdapter$1$1;-><init>(Lco/kr/festfive/adapter/UserGuideAdapter$1;)V

    .line 149
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 158
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 160
    return v5
.end method