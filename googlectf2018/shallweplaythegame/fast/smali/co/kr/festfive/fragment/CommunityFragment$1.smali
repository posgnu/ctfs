.class Lco/kr/festfive/fragment/CommunityFragment$1;
.super Ljava/lang/Object;
.source "CommunityFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/CommunityFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/CommunityFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/CommunityFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/CommunityFragment;

    .prologue
    .line 74
    iput-object p1, p0, Lco/kr/festfive/fragment/CommunityFragment$1;->this$0:Lco/kr/festfive/fragment/CommunityFragment;

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
    .line 77
    packed-switch p2, :pswitch_data_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 79
    :pswitch_0
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment$1;->this$0:Lco/kr/festfive/fragment/CommunityFragment;

    iget-object v1, p0, Lco/kr/festfive/fragment/CommunityFragment$1;->this$0:Lco/kr/festfive/fragment/CommunityFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CommunityFragment;->access$000(Lco/kr/festfive/fragment/CommunityFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/kr/festfive/fragment/CommunityFragment;->access$100(Lco/kr/festfive/fragment/CommunityFragment;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
