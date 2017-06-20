.class Lcom/android/server/NotificationManagerService$6;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;IZILjava/lang/String;ILandroid/os/UserHandle;I)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    iput-boolean p5, p0, Lcom/android/server/NotificationManagerService$6;->val$isSystemNotification:Z

    iput p6, p0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    iput-object p7, p0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/NotificationManagerService$6;->val$callingPid:I

    iput-object p9, p0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 45

    .prologue
    .line 1823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->priority:I

    const/4 v6, -0x2

    const/4 v7, 0x2

    # invokes: Lcom/android/server/NotificationManagerService;->clamp(III)I
    invoke-static {v5, v6, v7}, Lcom/android/server/NotificationManagerService;->access$3500(III)I

    move-result v5

    iput v5, v4, Landroid/app/Notification;->priority:I

    .line 1826
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 1827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 1828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    const/4 v5, 0x2

    iput v5, v4, Landroid/app/Notification;->priority:I

    .line 1838
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    mul-int/lit8 v9, v4, 0xa

    .line 1844
    .local v9, "score":I
    move/from16 v26, v9

    .line 1845
    .local v26, "initialScore":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3600(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3600(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/internal/notification/NotificationScorer;

    .line 1849
    .local v36, "scorer":Lcom/android/internal/notification/NotificationScorer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, v36

    invoke-interface {v0, v4, v9}, Lcom/android/internal/notification/NotificationScorer;->getScore(Landroid/app/Notification;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_0

    .line 1850
    :catch_0
    move-exception v38

    .line 1851
    .local v38, "t":Ljava/lang/Throwable;
    const-string v4, "NotificationService"

    const-string v5, "Scorer threw on .getScore."

    move-object/from16 v0, v38

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1858
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v36    # "scorer":Lcom/android/internal/notification/NotificationScorer;
    .end local v38    # "t":Ljava/lang/Throwable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.scoreModified"

    move/from16 v0, v26

    if-eq v9, v0, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    # invokes: Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z
    invoke-static {v4, v5, v6}, Lcom/android/server/NotificationManagerService;->access$3700(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/NotificationManagerService$6;->val$isSystemNotification:Z

    if-eqz v4, :cond_miui

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    invoke-static {v4}, Lmiui/util/NotificationFilterHelper;->canSystemNotificationBeBlocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_miui
    const/16 v9, -0x3e8

    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suppressing notification from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by user request."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_2
    const/16 v4, -0x14

    if-ge v9, v4, :cond_4

    .line 2119
    :goto_2
    return-void

    .line 1858
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1880
    :cond_4
    const/16 v4, -0xa

    if-lt v9, v4, :cond_17

    const/4 v15, 0x1

    .line 1882
    .local v15, "canInterrupt":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v44

    monitor-enter v44

    .line 1883
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->inQuietHours()Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)Z

    move-result v24

    .line 1885
    .local v24, "inQuietHours":Z
    new-instance v3, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$6;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    invoke-direct/range {v3 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1887
    .local v3, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v32, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 1888
    .local v32, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v28, 0x0

    .line 1890
    .local v28, "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    # invokes: Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/NotificationManagerService;->access$3900(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v25

    .line 1891
    .local v25, "index":I
    if-gez v25, :cond_18

    .line 1892
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6

    .line 1906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 1911
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v40

    .line 1913
    .local v40, "token":J
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v17

    .line 1915
    .local v17, "currentUser":I
    :try_start_3
    invoke-static/range {v40 .. v41}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_1b

    .line 1919
    if-eqz v28, :cond_19

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v4, :cond_19

    .line 1920
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object/from16 v0, v32

    iput-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v22

    .line 1923
    .local v22, "identity":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1926
    :try_start_5
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1942
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_7

    .line 1943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NotificationManagerService;->access$4200(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 1946
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v32

    # invokes: Lcom/android/server/NotificationManagerService;->notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$4300(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1967
    .end local v22    # "identity":J
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "profile"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/ProfileManager;

    .line 1970
    .local v31, "profileManager":Landroid/app/ProfileManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/app/ProfileManager;->getActiveProfileGroup(Ljava/lang/String;)Landroid/app/ProfileGroup;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v18

    .line 1971
    .local v18, "group":Landroid/app/ProfileGroup;
    if-eqz v18, :cond_8

    .line 1979
    .end local v18    # "group":Landroid/app/ProfileGroup;
    .end local v31    # "profileManager":Landroid/app/ProfileManager;
    :cond_8
    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)I

    move-result v4

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1d

    const/4 v12, 0x1

    .line 1981
    .local v12, "alertsDisabled":Z
    :goto_8
    if-eqz v15, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4500(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    if-ne v4, v5, :cond_1e

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    move/from16 v0, v17

    if-ne v4, v0, :cond_1e

    :cond_9
    if-eqz v28, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1e

    :cond_a
    const/16 v33, 0x1

    .line 1984
    .local v33, "readyForAlerts":Z
    :goto_9
    const/16 v20, 0x0

    .line 1987
    .local v20, "hasValidSound":Z
    if-eqz v33, :cond_f

    if-nez v12, :cond_f

    .line 1988
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    .line 1996
    .local v13, "audioManager":Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_b

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_b
    const/16 v42, 0x1

    .line 2001
    .local v42, "useDefaultSound":Z
    :goto_a
    const/16 v37, 0x0

    .line 2002
    .local v37, "soundUri":Landroid/net/Uri;
    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mQuietHoursMute:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3000(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-nez v4, :cond_21

    :cond_c
    if-eqz v42, :cond_21

    .line 2003
    sget-object v37, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    .line 2007
    .local v35, "resolver":Landroid/content/ContentResolver;
    const-string v4, "notification_sound"

    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20

    const/16 v20, 0x1

    .line 2014
    .end local v35    # "resolver":Landroid/content/ContentResolver;
    :cond_d
    :goto_b
    if-eqz v20, :cond_f

    .line 2015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_24

    const/16 v27, 0x1

    .line 2017
    .local v27, "looping":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->audioStreamType:I

    if-ltz v4, :cond_25

    .line 2018
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v14, v4, Landroid/app/Notification;->audioStreamType:I

    .line 2022
    .local v14, "audioStreamType":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v32

    # setter for: Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2025
    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v13}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v22

    .line 2029
    .restart local v22    # "identity":J
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$600(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v30

    .line 2030
    .local v30, "player":Landroid/media/IRingtonePlayer;
    if-eqz v30, :cond_e

    .line 2031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move/from16 v2, v27

    invoke-interface {v0, v1, v4, v2, v14}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZI)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 2035
    :cond_e
    :try_start_9
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2041
    .end local v13    # "audioManager":Landroid/media/AudioManager;
    .end local v14    # "audioStreamType":I
    .end local v22    # "identity":J
    .end local v27    # "looping":Z
    .end local v30    # "player":Landroid/media/IRingtonePlayer;
    .end local v37    # "soundUri":Landroid/net/Uri;
    .end local v42    # "useDefaultSound":Z
    :cond_f
    :goto_e
    if-eqz v33, :cond_14

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->canVibrateDuringAlertsDisabled()Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4600(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2043
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    .line 2046
    .restart local v13    # "audioManager":Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_26

    const/16 v19, 0x1

    .line 2050
    .local v19, "hasCustomVibrate":Z
    :goto_f
    if-nez v19, :cond_27

    if-eqz v20, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->shouldConvertSoundToVibration()Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4700(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    const/16 v16, 0x1

    .line 2058
    .local v16, "convertSoundToVibration":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_28

    const/16 v43, 0x1

    .line 2061
    .local v43, "useDefaultVibrate":Z
    :goto_11
    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mQuietHoursStill:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3100(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-nez v4, :cond_14

    :cond_11
    if-nez v43, :cond_12

    if-nez v16, :cond_12

    if-eqz v19, :cond_14

    :cond_12
    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_14

    .line 2065
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v32

    # setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2067
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_29

    const/16 v34, 0x0

    .line 2070
    .local v34, "repeat":I
    :goto_12
    if-eqz v12, :cond_2a

    .line 2071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNoAlertsVibrationPattern:[J
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4800(Lcom/android/server/NotificationManagerService;)[J

    move-result-object v29

    .line 2080
    .local v29, "pattern":[J
    :goto_13
    if-nez v43, :cond_13

    if-eqz v16, :cond_2d

    .line 2083
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v22

    .line 2085
    .restart local v22    # "identity":J
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v4

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 2087
    :try_start_b
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2099
    .end local v13    # "audioManager":Landroid/media/AudioManager;
    .end local v16    # "convertSoundToVibration":Z
    .end local v19    # "hasCustomVibrate":Z
    .end local v22    # "identity":J
    .end local v29    # "pattern":[J
    .end local v34    # "repeat":I
    .end local v43    # "useDefaultVibrate":Z
    :cond_14
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v4

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_15

    .line 2101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2106
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2e

    if-eqz v15, :cond_2e

    .line 2108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    .line 2118
    :cond_16
    :goto_15
    monitor-exit v44

    goto/16 :goto_2

    .end local v3    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v12    # "alertsDisabled":Z
    .end local v17    # "currentUser":I
    .end local v20    # "hasValidSound":Z
    .end local v24    # "inQuietHours":Z
    .end local v25    # "index":I
    .end local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v32    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v33    # "readyForAlerts":Z
    .end local v40    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit v44
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v4

    .line 1880
    .end local v15    # "canInterrupt":Z
    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 1894
    .restart local v3    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v15    # "canInterrupt":Z
    .restart local v24    # "inQuietHours":Z
    .restart local v25    # "index":I
    .restart local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v32    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_18
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v28, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1895
    .restart local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1897
    if-eqz v28, :cond_5

    .line 1898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    or-int/2addr v5, v6

    iput v5, v4, Landroid/app/Notification;->flags:I

    goto/16 :goto_4

    .line 1915
    .restart local v40    # "token":J
    :catchall_1
    move-exception v4

    invoke-static/range {v40 .. v41}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1926
    .restart local v17    # "currentUser":I
    .restart local v22    # "identity":J
    :catchall_2
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1929
    .end local v22    # "identity":J
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-wide v22

    .line 1931
    .restart local v22    # "identity":J
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/StatusBarManagerService;->addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, v32

    iput-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1932
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1a

    if-eqz v15, :cond_1a

    .line 1934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/LightsService$Light;->pulse()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1938
    :cond_1a
    :try_start_e
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    :catchall_3
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1948
    .end local v22    # "identity":J
    :cond_1b
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not posting notification with icon==0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    if-eqz v28, :cond_1c

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v4, :cond_1c

    .line 1950
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-wide v22

    .line 1952
    .restart local v22    # "identity":J
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1955
    :try_start_10
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v32

    # invokes: Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$4400(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 1962
    .end local v22    # "identity":J
    :cond_1c
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1955
    .restart local v22    # "identity":J
    :catchall_4
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1975
    .end local v22    # "identity":J
    :catch_1
    move-exception v39

    .line 1976
    .local v39, "th":Ljava/lang/Throwable;
    const-string v4, "NotificationService"

    const-string v5, "An error occurred profiling the notification."

    move-object/from16 v0, v39

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1979
    .end local v39    # "th":Ljava/lang/Throwable;
    :cond_1d
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 1981
    .restart local v12    # "alertsDisabled":Z
    :cond_1e
    const/16 v33, 0x0

    goto/16 :goto_9

    .line 1996
    .restart local v13    # "audioManager":Landroid/media/AudioManager;
    .restart local v20    # "hasValidSound":Z
    .restart local v33    # "readyForAlerts":Z
    :cond_1f
    const/16 v42, 0x0

    goto/16 :goto_a

    .line 2007
    .restart local v35    # "resolver":Landroid/content/ContentResolver;
    .restart local v37    # "soundUri":Landroid/net/Uri;
    .restart local v42    # "useDefaultSound":Z
    :cond_20
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 2009
    .end local v35    # "resolver":Landroid/content/ContentResolver;
    :cond_21
    if-eqz v24, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mQuietHoursMute:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3000(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_d

    .line 2010
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v37, v0

    .line 2011
    if-eqz v37, :cond_23

    const/16 v20, 0x1

    :goto_16
    goto/16 :goto_b

    :cond_23
    const/16 v20, 0x0

    goto :goto_16

    .line 2015
    :cond_24
    const/16 v27, 0x0

    goto/16 :goto_c

    .line 2020
    .restart local v27    # "looping":Z
    :cond_25
    const/4 v14, 0x5

    .restart local v14    # "audioStreamType":I
    goto/16 :goto_d

    .line 2035
    .restart local v22    # "identity":J
    :catchall_5
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2046
    .end local v14    # "audioStreamType":I
    .end local v22    # "identity":J
    .end local v27    # "looping":Z
    .end local v37    # "soundUri":Landroid/net/Uri;
    .end local v42    # "useDefaultSound":Z
    :cond_26
    const/16 v19, 0x0

    goto/16 :goto_f

    .line 2050
    .restart local v19    # "hasCustomVibrate":Z
    :cond_27
    const/16 v16, 0x0

    goto/16 :goto_10

    .line 2058
    .restart local v16    # "convertSoundToVibration":Z
    :cond_28
    const/16 v43, 0x0

    goto/16 :goto_11

    .line 2067
    .restart local v43    # "useDefaultVibrate":Z
    :cond_29
    const/16 v34, -0x1

    goto/16 :goto_12

    .line 2072
    .restart local v34    # "repeat":I
    :cond_2a
    if-eqz v43, :cond_2b

    .line 2073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDefaultVibrationPattern:[J
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$4900(Lcom/android/server/NotificationManagerService;)[J

    move-result-object v29

    .restart local v29    # "pattern":[J
    goto/16 :goto_13

    .line 2074
    .end local v29    # "pattern":[J
    :cond_2b
    if-eqz v19, :cond_2c

    .line 2075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v29, v0

    .restart local v29    # "pattern":[J
    goto/16 :goto_13

    .line 2077
    .end local v29    # "pattern":[J
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mFallbackVibrationPattern:[J
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$5000(Lcom/android/server/NotificationManagerService;)[J

    move-result-object v29

    .restart local v29    # "pattern":[J
    goto/16 :goto_13

    .line 2087
    .restart local v22    # "identity":J
    :catchall_6
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2089
    .end local v22    # "identity":J
    :cond_2d
    move-object/from16 v0, v29

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_14

    .line 2092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v4

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    move-object/from16 v0, v32

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->vibrate:[J

    move/from16 v0, v34

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V

    goto/16 :goto_14

    .line 2113
    .end local v13    # "audioManager":Landroid/media/AudioManager;
    .end local v16    # "convertSoundToVibration":Z
    .end local v19    # "hasCustomVibrate":Z
    .end local v29    # "pattern":[J
    .end local v34    # "repeat":I
    .end local v43    # "useDefaultVibrate":Z
    :cond_2e
    if-eqz v28, :cond_16

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_16

    .line 2115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_15

    .line 2033
    .restart local v13    # "audioManager":Landroid/media/AudioManager;
    .restart local v14    # "audioStreamType":I
    .restart local v22    # "identity":J
    .restart local v27    # "looping":Z
    .restart local v37    # "soundUri":Landroid/net/Uri;
    .restart local v42    # "useDefaultSound":Z
    :catch_2
    move-exception v4

    .line 2035
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_e
.end method
