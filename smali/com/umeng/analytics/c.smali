.class Lcom/umeng/analytics/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/analytics/b;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/b;

    iput-object p2, p0, Lcom/umeng/analytics/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/umeng/analytics/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/analytics/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/b;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
