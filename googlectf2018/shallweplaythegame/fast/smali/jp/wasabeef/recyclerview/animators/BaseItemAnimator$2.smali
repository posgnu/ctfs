.class Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$2;
.super Ljava/lang/Object;
.source "BaseItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;

    .prologue
    .line 151
    iput-object p1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$2;->this$0:Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;

    iput-object p2, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;

    .line 154
    .local v0, "change":Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;
    iget-object v2, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$2;->this$0:Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;

    invoke-static {v2, v0}, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;->access$200(Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;)V

    goto :goto_0

    .line 156
    .end local v0    # "change":Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$ChangeInfo;
    :cond_0
    iget-object v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 157
    iget-object v1, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$2;->this$0:Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;

    invoke-static {v1}, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;->access$300(Ljp/wasabeef/recyclerview/animators/BaseItemAnimator;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Ljp/wasabeef/recyclerview/animators/BaseItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method
