<?php
namespace app\index\controller;
use think\facade\Hook;
class Index
{
    public function index()
    {
    	
        return '<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:) </h1><p>sunny --- 前后端分离式，后台管理系统开发框架 <br/><span style="font-size:30px">基于ThinkPHP V5.1 layui v2.X</span></p></div>';
    }

}
