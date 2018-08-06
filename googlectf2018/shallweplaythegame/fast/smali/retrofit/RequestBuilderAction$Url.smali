.class final Lretrofit/RequestBuilderAction$Url;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Url"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 0
    .param p1, "builder"    # Lretrofit/RequestBuilder;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lretrofit/RequestBuilder;->setRelativeUrl(Ljava/lang/String;)V

    .line 33
    return-void
.end method
