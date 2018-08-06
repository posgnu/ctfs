.class Lco/kr/festfive/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/MainActivity;->getUnreadCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/MainActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/MainActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lco/kr/festfive/activity/MainActivity$2;->this$0:Lco/kr/festfive/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 235
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity$2;->this$0:Lco/kr/festfive/activity/MainActivity;

    const v2, 0x7f080241

    invoke-virtual {v1, v2}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 236
    .local v0, "badge":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    const-string v1, "HAMA"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public onResult(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 219
    iget-object v1, p0, Lco/kr/festfive/activity/MainActivity$2;->this$0:Lco/kr/festfive/activity/MainActivity;

    const v2, 0x7f080241

    invoke-virtual {v1, v2}, Lco/kr/festfive/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 220
    .local v0, "badge":Landroid/widget/TextView;
    if-nez p1, :cond_1

    .line 221
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :goto_0
    const/16 v1, 0x63

    if-le p1, v1, :cond_0

    .line 227
    const/16 p1, 0x63

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void

    .line 223
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
