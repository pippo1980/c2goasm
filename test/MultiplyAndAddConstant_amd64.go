//+build !noasm
//+build !appengine

package c2goasmtest

import (
	"unsafe"
)

//go:noescape
func _MultiplyAndAddConstant(vec1, vec2, result unsafe.Pointer)

func MultiplyAndAddConstant(f1, f2 [8]float32) [8]float32 {

	_f3 := [8]float32{}

	_MultiplyAndAddConstant(unsafe.Pointer(&f1), unsafe.Pointer(&f2), unsafe.Pointer(&_f3))

	return _f3
}
