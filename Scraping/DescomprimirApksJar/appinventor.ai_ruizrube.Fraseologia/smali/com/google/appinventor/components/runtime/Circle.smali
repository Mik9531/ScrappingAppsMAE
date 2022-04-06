.class public Lcom/google/appinventor/components/runtime/Circle;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "Circle.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Circle"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private center:Lorg/osmdroid/util/GeoPoint;

.field private latitude:D

.field private longitude:D

.field private radius:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/appinventor/components/runtime/Circle$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Circle$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Circle;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .prologue
    const-wide/16 v2, 0x0

    .line 106
    sget-object v0, Lcom/google/appinventor/components/runtime/Circle;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 41
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    .line 107
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 108
    return-void
.end method


# virtual methods
.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the center of the circle."
    .end annotation

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Circle;->latitude:D

    return-wide v0
.end method

.method public Latitude(D)V
    .locals 7
    .param p1, "latitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 139
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Circle;->latitude:D

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 142
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "Latitude"

    const/16 v2, 0xd55

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 146
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 145
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the center of the circle."
    .end annotation

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Circle;->longitude:D

    return-wide v0
.end method

.method public Longitude(D)V
    .locals 7
    .param p1, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 162
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Circle;->longitude:D

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 165
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "Longitude"

    const/16 v2, 0xd56

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 169
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 168
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Radius()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The radius of the circle in meters."
    .end annotation

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Circle;->radius:D

    return-wide v0
.end method

.method public Radius(D)V
    .locals 1
    .param p1, "radius"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Circle;->radius:D

    .line 123
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 125
    return-void
.end method

.method public SetLocation(DD)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the center of the Circle."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 183
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "SetLocation"

    const/16 v2, 0xd55

    new-array v3, v3, [Ljava/lang/Object;

    .line 185
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    .line 184
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {p3, p4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "SetLocation"

    const/16 v2, 0xd56

    new-array v3, v3, [Ljava/lang/Object;

    .line 188
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    .line 187
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_1
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Circle;->latitude:D

    .line 191
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/Circle;->longitude:D

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p3, p4}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 194
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    goto :goto_0
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The type of the feature. For Circles, this returns the text \"Circle\"."
    .end annotation

    .prologue
    .line 114
    const-string v0, "Circle"

    return-object v0
.end method

.method public varargs accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "visitor":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<TT;>;"
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public updateCenter(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 211
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Circle;->latitude:D

    .line 212
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/Circle;->longitude:D

    .line 213
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 214
    return-void
.end method
