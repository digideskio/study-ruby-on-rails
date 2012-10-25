Whenever the name of a Ghost Method clashes with the name of a real, inherited method, the latter win.

* メソッドを削除剃る方法
You Can remove a method in two easy ways.
The drastic Moudule#undef_method() removes all methods, including the inherited ones.
The kinder Module#remove_method() removes the method from the receiver, but it leaves inherited methods alone.