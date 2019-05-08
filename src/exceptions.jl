# Builtin Exceptions {{{
# ArgumentError
# BoundsError
# CompositeException
# DivideError
# DomainError
# EOFError
# ErrorException
# InexactError
# InitError
# InterruptException
# InvalidStateException
# KeyError
# LoadError
# OutOfMemoryError
# ReadOnlyMemoryError
# RemoteException
# MethodError
# OverflowError
# Meta.ParseError
# SystemError
# TypeError
# UndefRefError
# UndefVarError
# StringIndexError
# }}}
# try catch {{{
x = 10
try
  println(sqrt(x))
catch x
  println(sqrt(complex(x, 0)))
finally
  println("DONE.")
end
# }}}
