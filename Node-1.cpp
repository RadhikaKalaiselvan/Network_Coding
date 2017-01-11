#include <stdlib.h>
#include "Node.h"
#include <math.h>

Node::Node():IsCluster(false)
{
    DistanceList = NULL;
}
Node::Node(unsigned int Count, int mid):id(mid), px(0), py(0), IsCluster(false)
{
    NodeCount = Count;
    DistanceList = new NodeSort[NodeCount];
}

Node::~Node(void)
{
    delete [] DistanceList;
}

int Node::OnBecomeCluster(void)
{
  
    printf("%d ", id);
    return 0;
}

int Node::OnNoneCluster(void)
{
    
	int itsClusterID;
    for (unsigned int i = 0; i < NodeCount; i++)
    {
        if (this->DistanceList[i].DstNode->IsCurrentCluster)
        {
            // printf("%d --> %d\n", id, DistanceList[i].DstNode->id);
			itsClusterID = DistanceList[i].DstNode->id ;
            break;
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
        this->DistanceList[i].ComputeDistance(this, &DstList[i]);
       
    }
    
    qsort(DistanceList, NodeCount, sizeof(NodeSort), (int (*)(const void *,const void *))NodeSort::Compare);


}

void Node::SetNode(unsigned int Count, int id)
{
    NodeCount = Count;
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
int Node::consumeE(Node &a ,Node &b)
{	
	
}
