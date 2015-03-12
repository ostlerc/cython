cdef extern from "test.cpp":
    cdef cppclass Animal:
        Animal() except +
        void sayHi() nogil
        void sayBye() nogil

cdef class cAnimal:
    cdef:
        Animal a

    def hi(self):
        self.a.sayHi()

    def bye(self):
        self.a.sayBye()
