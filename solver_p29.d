import std.stdio;

class IndexxData{
    int value;
    int index;
    public this(int value, int index) {
        this.value = value;
        this.index = index;
    }

    static IndexxData[] constructlist(int[] data) {
        IndexxData[] indics = new IndexxData[data.length];
        for(int i=0; i<data.length; i++) {
            indics[i] = new IndexxData(data[i], i+1);
        }
        return indics;
    }
}

void solve_sort_indexes(int[] data){
    IndexxData[] IndexxData = IndexxData.constructlist(data);

    for(int i = 0; i<IndexxData.length;i ++){
        for(int j = 0; j<IndexxData.length-1; j++){
            if (IndexxData[j].value>IndexxData[j+1].value){
                swap(IndexxData[j], IndexxData[j+1]);
            }
        }
    }

        for(int i=0; i<IndexxData.length; i++)
        {
            writef("%d ", IndexxData[i].index);
        }
        writeln();
    
        for(int i=0; i<IndexxData.length; i++)
        {
            writef("%d ", IndexxData[i].value);
        }
        writeln();
}

void swap(ref IndexxData x, ref IndexxData y){
    IndexxData temp = y;
    y=x;
    x=temp;
}