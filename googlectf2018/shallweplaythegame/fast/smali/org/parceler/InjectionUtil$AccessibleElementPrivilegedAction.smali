.class abstract Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;
.super Ljava/lang/Object;
.source "InjectionUtil.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/parceler/InjectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AccessibleElementPrivilegedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/reflect/AccessibleObject;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final accessible:Ljava/lang/reflect/AccessibleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;, "Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction<TT;TE;>;"
    .local p1, "accessible":Ljava/lang/reflect/AccessibleObject;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;->accessible:Ljava/lang/reflect/AccessibleObject;

    .line 218
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;, "Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction<TT;TE;>;"
    iget-object v2, p0, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;->accessible:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    .line 223
    .local v1, "previous":Z
    iget-object v2, p0, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;->accessible:Ljava/lang/reflect/AccessibleObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 225
    iget-object v2, p0, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;->accessible:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {p0, v2}, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;->run(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "output":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/parceler/InjectionUtil$AccessibleElementPrivilegedAction;->accessible:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 229
    return-object v0
.end method

.method public abstract run(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
