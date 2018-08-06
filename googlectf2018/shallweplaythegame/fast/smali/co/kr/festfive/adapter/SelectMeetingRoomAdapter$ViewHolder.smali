.class Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectMeetingRoomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field addressText:Landroid/widget/TextView;

.field buttonText:[Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field ivProfile:[Lco/kr/festfive/view/ReserveUserProfileImageView;

.field scrollView:Lco/kr/festfive/adapter/CustomHorizontalScrollView;

.field final synthetic this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

.field titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;)V
    .locals 2
    .param p1, "this$0"    # Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    .prologue
    const/16 v1, 0x21

    .line 580
    iput-object p1, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$ViewHolder;->this$0:Lco/kr/festfive/adapter/SelectMeetingRoomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$ViewHolder;->buttonText:[Landroid/widget/TextView;

    .line 577
    new-array v0, v1, [Lco/kr/festfive/view/ReserveUserProfileImageView;

    iput-object v0, p0, Lco/kr/festfive/adapter/SelectMeetingRoomAdapter$ViewHolder;->ivProfile:[Lco/kr/festfive/view/ReserveUserProfileImageView;

    .line 582
    return-void
.end method
