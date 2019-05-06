from z3 import Int


class Storage(object):
    def __init__(self):
        self._storage = {}

    def __getitem__(self, item):
        if item not in self._storage.keys():
            self._storage[item] = Int("s_" + str(item))
        return self._storage[item]

    def __setitem__(self, key, value):
        self._storage[key] = value
