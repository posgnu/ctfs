.class Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$5;
.super Ljava/lang/Object;
.source "SelectMeetingRoomAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    .prologue
    .line 232
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$5;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$5;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    iget-object v1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$5;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->access$100(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->setAllViewScroll(I)V

    .line 236
    iget-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$5;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-static {v0}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->access$000(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;)Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$ViewHolder;->scrollView:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

    invoke-virtual {v0}, Lco/kr/festfive/adapter/CustomHorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 237
    return-void
.end method
