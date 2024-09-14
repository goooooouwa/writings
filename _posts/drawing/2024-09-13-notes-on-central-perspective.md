---
title: 笔记：一点透视
category: drawing
tags: perspective
---
## The visual ray method（视觉射线法）

90度视锥约定了view distance与view height相等,degree of vision cone为90度，此设定下，viewpoint经过向上翻折后，正好落在view circle上面，为透视绘画提供了很多便利。

### The Double Fold（双折）

视觉射线法通过将viewpoint向上翻折，同时将地面向下翻折，与画面处于同一平面，我们能够便利地定位物体在画面上的位置。只需在地面俯视图（Plan）上将物体按俯视角度确定其大小和位置，然后通过连接其在plan上的点与翻折后的viewpoint得到一条直线，再将该点的垂直线与ground line（地线）的交点与vanishing point连接得到第2条直线，这2条直线交叉的点即为该物体的某个点在画面中的位置。

这个基本用法只适用于物体离groundline和median line比较近的情况，如果物体离groundline和median line很远，就需要使用后面介绍的measure points和measure bar来定位了。

### Visual Rays and Vanishing Points

使用视觉射线法可以轻松的找到任意物体在画面中的消失点。只需将地面俯视图（Plan）上将物体平移，并将任一个顶点与翻折后的viewpoint重合，然后沿着顶点所在的任一条边画延长线与视平线相交，即该物体这条边所在的平面在画面中的消失点。

### Visual Rays and the "Principal Foundation"

另外一种定位物体在画面中的位置的方法是先找到物体某条边的消失点（Visual Rays and Vanishing Points所介绍的方法），然后将俯视图中物体的这条边的延长线与ground line相交，连接消失点和ground line上的交点得到一条直线，然后将该线条在plan上的点与翻折后的viewpoint相连得到第2条直线（即双折法的第1条构造线条），这2条直线交叉的点即为该物体这条线在画面中的位置。

该方法同样只适用于物体离groundline和median line比较近的情况。

当物体离groundline和median line较远的情况，连接物体在plan上的点与翻折后的viewpoint就变得比较困难（线条会很长），这时可以改用双折法的第2条构造线条，即将该物体在俯视图中的线条的两个端点(end point)的垂直线与ground line（地线）的交点与princial point(direction of view与画面的交点)连接得到的直线。一个快速寻找端点(end point)垂直线与ground line（地线）的交点的方法是，根据物体在俯视图中距离median line的距离，直接在ground line上测量出交点所在的位置。

到这里我们会发现很重要的一点，the ground line is always the "actual size" ruler. ground line反应的是物体的实际大小。

最后一个关键问题是，当物体离groundline或median line比较远的时候，以上的构造方法就不实用了。这时我们就需要用到measure bar，即一种缩小scale后的ground line ruler（后文会介绍具体使用方法）。

Obviously the crucial step is still missing: how do we work with objects that are very far from the median line and/or ground line? These create ground line measure points and/or intersection points that cannot conveniently be located on the perspective drawing ground line. This challenge requires the artist to reduce the scale of the ground line ruler as a substitute for working with unreasonably large dimensions in actual size. This reduced ruler is called a measure bar, and its use is explained below.

## One point perspective（一点透视）

### Diagonals and the Unit Depth（纵深线和单位深度）

通过连接单位垂直线条的上端点与视锥下方的dvp（或者下端点与视锥上方的dvp）得到一条直线，然后连接单位线条的另一个端点与pp得到第2条直线（即一条纵深线），两条线相交的点与单位垂直线条的连线与单位长度相等，即为单位深度。

同样的，对于单位水平线条，可以通过连接其左端点与视锥右侧的dvp（或者右端点与视锥左侧的dvp）得到一条类似的直线，然后连接单位线条的另一个端点与pp得到第2条直线（即一条纵深线），两条线相交的点与单位垂直线条的连线与单位长度相等，同样可以得到单位深度。

### Unequal Spacing in Depth（不相等的深度间距）

如果知道不相等的深度间距之间的比例，就可以用measure bar在画面中重现同样比例的不相等的深度间距。无论是水平还是垂直间距。

### Shifting the Unit Dimension

单位水平或垂直长度可以在画面中同一透视深度上任意的反转（rotate）或平移，其长度不变。

### Unit depth dimensions may not be shifted or rotated

但是单位深度无法自由地反转（rotate）或平移，因为不同位置深度会因为透视而有所不同。

## slanting & sloping planes（倾斜面和坡斜面）

画倾斜面的方法很简单，只需将纸张以同样角度旋转，让倾斜面看起来水平即可当作普通水平面处理。

画坡斜面的办法是，将viewpoint向视锥左（或右）侧翻折（与dvp重合），然后在dvp画一个与坡斜面相同的角度，其中一条线与视平线重合，另一条线与median line的交点即该坡斜面的slope vanishing point（斜坡消失点）。


