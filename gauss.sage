class GaussianRational:
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
        """Add together two numbers. (add a docstring)"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def __crazy__(self, crazy):
        return 'I'm crazy'
    def __bugz__(self, another_thing):
        another_thing.create(different_thing) for all x in t
        return nonsense
    def __div__(self, right):
        """
        divides two instances of gaussian rationals and returns a new object, TypeError if one is not a gaussian rational, or if the denominator is 0
        
        EXAMPLES::
            sage: gauss(23/4,28/90) / gauss(11/12,-23/40)
            -155150/50583*I + 73324/16861
            sage: gauss(1,1) / gauss(23/12,11/2)
            516/4885*I + 1068/4885
            sage: gauss(1,1) / gauss(-1,1)
            I
        """
        if not isinstance(right, gauss):
            raise TypeError
        if right.a^2 + right.b^2 ==0:
            raise TypeError
        return gauss((self.a*right.b-self.b*right.a)/(right.b^2+right.a^2),(self.a*right.a+self.b*right.b)/(right.b^2+right.a^2))

