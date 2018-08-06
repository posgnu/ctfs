.class Lco/kr/festfive/fragment/UserGuideFragment$1;
.super Ljava/lang/Object;
.source "UserGuideFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/UserGuideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/UserGuideFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/UserGuideFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/UserGuideFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lco/kr/festfive/fragment/UserGuideFragment$1;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 86
    packed-switch p2, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 88
    :pswitch_0
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment$1;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    iget-object v1, p0, Lco/kr/festfive/fragment/UserGuideFragment$1;->this$0:Lco/kr/festfive/fragment/UserGuideFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/UserGuideFragment;->access$000(Lco/kr/festfive/fragment/UserGuideFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/kr/festfive/fragment/UserGuideFragment;->access$100(Lco/kr/festfive/fragment/UserGuideFragment;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
