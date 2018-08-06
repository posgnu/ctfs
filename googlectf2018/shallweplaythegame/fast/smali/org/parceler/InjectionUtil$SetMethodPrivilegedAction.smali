.class final Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;
.super Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;
.source "InjectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/InjectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetMethodPrivilegedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction",
        "<TT;",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;

.field private final target:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "classMethod"    # Ljava/lang/reflect/Method;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 159
    .local p0, "this":Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;, "Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction<TT;>;"
    invoke-direct {p0, p1}, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 160
    iput-object p2, p0, Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;->target:Ljava/lang/Object;

    .line 161
    iput-object p3, p0, Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;->args:[Ljava/lang/Object;

    .line 162
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/parceler/InjectionUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Method;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # [Ljava/lang/Object;
    .param p4, "x3"    # Lorg/parceler/InjectionUtil$1;

    .prologue
    .line 153
    .local p0, "this":Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;, "Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;, "Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction<TT;>;"
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;->run(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .param p1, "classMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;, "Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction<TT;>;"
    iget-object v0, p0, Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;->target:Ljava/lang/Object;

    iget-object v1, p0, Lorg/parceler/InjectionUtil$SetMethodPrivilegedAction;->args:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
