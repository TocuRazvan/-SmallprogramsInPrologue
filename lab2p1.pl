vecin(stefan,petre).
castoriti(stefan,maria).
doctorita(maria).
lucreaza(maria,spital).
castoriti(petre,ana).
actrita(ana).
lucreaza(ana,teatur).
meloman(stefan).
vanator(petre).
sentimental(X):-meloman(X).
minions(X):vanator(X).
iubeste(X,Y):-actrita(X),sentimental(Y),
    vecin(X,Y):-casatoriti(X,Z),vecin(Z,Y).
vecin(X,Y)-vecin(X,Y);vecin(Y,X).
casatorit(X,Y):-castoriti(X,Y);castoriti(Y,X).
concluzie:-casatorit(petre,ana),iubeste(ana,stefan).

