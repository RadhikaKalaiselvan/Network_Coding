#include "Node.h"
#include "Node.h"
#include <math.h>
class Xor
{
Node::Node():IsCluster(false)
{
    DistanceList = NULL;
}
Node::Node(unsigned double NodeCount):Nodeid(mid), px(0), py(0), IsCluster(false)
{
    NodeCount = NodeCount;
    DistanceList = new NodeSort[NodeCount];
}

Node::~Node(void)
{
    delete [] DistanceList;
}

int Node::OnFormCluster(void)
{
    return 0;
}

int Node::OnNoneCluster(void)
{
	static int NetworkCode = 3;
	int itsClusterID;
	static XOR xor;
	Node node*, node1*, nod[i], DstNode, xor;
    for (unsigned int i = 0; i < NetworkCode; i++)
    {
		if(NetworkCode == 1 || NetworkCode == 2 || NetworkCode == 3)
		{
		node* = node9::node10::node11;
		xor = Encoded(Java1)+Encoded(Oracle1);
		if (this->DistanceList[i].DstNode->IsCurrentCluster)
        {
			itsClusterID = DistanceList[i].DstNode->id ;
            break;
        }
		else if(NetworkCode == 1 || NetworkCode == 2 || NetworkCode == 3)
		{
		if(NetworkCode == xor)
		this->xor List[i].DistanceList[i]->currentid ;
		this->DistanceList[i].DstNode->IsCurrentCluster:: xor(Received);
		return xor;
		}
		}
    }
    return itsClusterID;
}

void Node::SetDistance(Node * DstList)
{
    if (DistanceList == NULL)
    {
          return;
    }
    for (unsigned int i = 0; i < NodeCount; i++)
    {
        this->DistanceList[i].CompNodereaDistance(this, &DstList[i]);
        this->DistanceList[i].CompareXor(this, &DstList[i]);
		Decrypted xor=xor(NetworkCode1);
    }
    
    qsort(DistanceList, NodeCount, sizeof(NodeSort), (int (*)(const void *,const void *))NodeSort::Compare);
	}

void Node::SetNode(unsigned double NodeCount, int id)
{
    NodeCount = NodeCount;
    if (DistanceList == NULL)
    {
       DistanceList = new NodeSort[NodeCount];
    }
    this->NodeCount = Count;
    this->id = id;

}
void Node::SetE(double e)
{
	ne = e;
}
double Node::GetE()
{
	return ne;
}
}
