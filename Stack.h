#include "LinkedList.h"


//1. 템플릿 클래스로 확장해야함
//2. Stack형식으로 Delete 함수 재정의해야함
//주의: first, current_size는 class의 멤버 변수이기 때문에 this 포인터를 사용하여 가져와야함

template<typename T>
class Stack : public LinkedList<T> {
public:
    bool Delete(T &element) {
        // 스택이 비어 있으면 false 반환
        if (!this->first){ return false;}
        // 삭제할 노드를 first로 설정하고, first를 다음 노드로 업데이트
        Node<T> *nodeToDelete = this->first;
        this->first = this->first->link;
        element = nodeToDelete->data;
        // 노드 삭제 및 스택 크기 감소
        delete nodeToDelete;
        this->current_size--;
        return true;
    }
};
