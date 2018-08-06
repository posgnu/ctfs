.class Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$3;
.super Ljava/lang/Object;
.source "SelectMeetingRoomAdapter.java"

# interfaces
.implements Lco/kr/festfive/adapter/CustomHorizontalScrollView$OnChangeListener;


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
    .line 143
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$3;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$3;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-virtual {v0, p1}, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;->setAllViewScroll(I)V

    .line 147
    return-void
.end method
