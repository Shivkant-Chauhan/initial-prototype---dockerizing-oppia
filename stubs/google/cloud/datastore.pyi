from typing import ContextManager

class Entity: ...
class Key: ...

class Client:
    def transaction(self) -> ContextManager[None]: ...