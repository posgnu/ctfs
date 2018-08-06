.class Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;
.super Ljava/lang/Object;
.source "AnimatedExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/model/AnimatedExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupInfo"
.end annotation


# instance fields
.field animating:Z

.field dummyHeight:I

.field expanding:Z

.field firstChildPosition:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-boolean v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->animating:Z

    .line 243
    iput-boolean v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->expanding:Z

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lco/kr/festfive/model/AnimatedExpandableListView$1;)V
    .locals 0
    .param p1, "x0"    # Lco/kr/festfive/model/AnimatedExpandableListView$1;

    .prologue
    .line 241
    invoke-direct {p0}, Lco/kr/festfive/model/AnimatedExpandableListView$GroupInfo;-><init>()V

    return-void
.end method
