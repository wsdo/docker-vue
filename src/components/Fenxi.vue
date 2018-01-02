<template>
  <div>
  <nav-bar></nav-bar>
    <div style="margin-top: 15px;">
      <el-row :gutter="20">
        <el-col :span="12" :offset="6">
          <div class="grid-content bg-purple"></div>
            <el-input placeholder="请输入网址" v-model="url" class="input-with-select">
          <el-button slot="append" icon="el-icon-search" @keyUp="getWebInfo" @click="getWebInfo()"></el-button>
        </el-input>

        </el-col>
      </el-row>
    </div>
  <el-table
    :data="webinfo"
    style="width: 100%"
    :row-class-name="tableRowClassName">
    <el-table-column
      prop="cms"
      label="程序"
      >
    </el-table-column>
    <el-table-column
      prop="categories.name"
      label="类别"
      >
    </el-table-column>
    <el-table-column
      prop="version"
      label="版本">
    </el-table-column>   
    <el-table-column
      prop="confidence"
      label="可信度">
    </el-table-column>
  </el-table>
  </div>
</template>

<style>
  .el-table .warning-row {
    background: oldlace;
  }

  .el-table .success-row {
    background: #f0f9eb;
  }
</style>

<script>
  import NavBar from '@/components/Nav';
  import FenxiSearch from '@/components/FenxiSearch';

  export default {
    methods: {
      tableRowClassName({row, rowIndex}) {
        if (rowIndex === 1) {
          return 'warning-row';
        } else if (rowIndex === 3) {
          return 'success-row';
        }
        return '';
      },
      getWebInfo(){
        this.$http.get('/fenxis',{params:{url:this.url}})
        .then(res=>{
          this.webinfo = res.data;
          console.log(this.webinfo);
        })
      }

    },
    components: {
      NavBar,
      FenxiSearch
    },
    data() {
      return {
        webinfo:[],
        url:'',
      }
    }
  }
</script>