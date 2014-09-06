<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
var mydata=[
            {name: '重庆市',value:  Math.round(Math.random()*1000)},
            {name: '北京市',value: Math.round(Math.random()*1000)},
            {name: '天津市',value: Math.round(Math.random()*1000)},
            {name: '上海市',value: Math.round(Math.random()*1000)},
            {name: '香港',value: Math.round(Math.random()*1000)},
            {name: '澳门',value: Math.round(Math.random()*1000)},
            {name: '巴音郭楞蒙古自治州',value: Math.round(Math.random()*1000)},
            {name: '和田地区',value: Math.round(Math.random()*1000)},
            {name: '哈密地区',value: Math.round(Math.random()*1000)},
            {name: '阿克苏地区',value: Math.round(Math.random()*1000)},
            {name: '阿勒泰地区',value: Math.round(Math.random()*1000)},
            {name: '喀什地区',value: Math.round(Math.random()*1000)},
            {name: '塔城地区',value: Math.round(Math.random()*1000)},
            {name: '昌吉回族自治州',value: Math.round(Math.random()*1000)},
            {name: '克孜勒苏柯尔克孜自治州',value: Math.round(Math.random()*1000)},
            {name: '吐鲁番地区',value: Math.round(Math.random()*1000)},
            {name: '伊犁哈萨克自治州',value: Math.round(Math.random()*1000)},
            {name: '博尔塔拉蒙古自治州',value: Math.round(Math.random()*1000)},
            {name: '乌鲁木齐市',value: Math.round(Math.random()*1000)},
            {name: '克拉玛依市',value: Math.round(Math.random()*1000)},
            {name: '阿拉尔市',value: Math.round(Math.random()*1000)},
            {name: '图木舒克市',value: Math.round(Math.random()*1000)},
            {name: '五家渠市',value: Math.round(Math.random()*1000)},
            {name: '石河子市',value: Math.round(Math.random()*1000)},
            {name: '那曲地区',value: Math.round(Math.random()*1000)},
            {name: '阿里地区',value: Math.round(Math.random()*1000)},
            {name: '日喀则地区',value: Math.round(Math.random()*1000)},
            {name: '林芝地区',value: Math.round(Math.random()*1000)},
            {name: '昌都地区',value: Math.round(Math.random()*1000)},
            {name: '山南地区',value: Math.round(Math.random()*1000)},
            {name: '拉萨市',value: Math.round(Math.random()*1000)},
            {name: '呼伦贝尔市',value: Math.round(Math.random()*1000)},
            {name: '阿拉善盟',value: Math.round(Math.random()*1000)},
            {name: '锡林郭勒盟',value: Math.round(Math.random()*1000)},
            {name: '鄂尔多斯市',value: Math.round(Math.random()*1000)},
            {name: '赤峰市',value: Math.round(Math.random()*1000)},
            {name: '巴彦淖尔市',value: Math.round(Math.random()*1000)},
            {name: '通辽市',value: Math.round(Math.random()*1000)},
            {name: '乌兰察布市',value: Math.round(Math.random()*1000)},
            {name: '兴安盟',value: Math.round(Math.random()*1000)},
            {name: '包头市',value: Math.round(Math.random()*1000)},
            {name: '呼和浩特市',value: Math.round(Math.random()*1000)},
            {name: '乌海市',value: Math.round(Math.random()*1000)},
            {name: '海西蒙古族藏族自治州',value: Math.round(Math.random()*1000)},
            {name: '玉树藏族自治州',value: Math.round(Math.random()*1000)},
            {name: '果洛藏族自治州',value: Math.round(Math.random()*1000)},
            {name: '海南藏族自治州',value: Math.round(Math.random()*1000)},
            {name: '海北藏族自治州',value: Math.round(Math.random()*1000)},
            {name: '黄南藏族自治州',value: Math.round(Math.random()*1000)},
            {name: '海东地区',value: Math.round(Math.random()*1000)},
            {name: '西宁市',value: Math.round(Math.random()*1000)},
            {name: '甘孜藏族自治州',value: Math.round(Math.random()*1000)},
            {name: '阿坝藏族羌族自治州',value: Math.round(Math.random()*1000)},
            {name: '凉山彝族自治州',value: Math.round(Math.random()*1000)},
            {name: '绵阳市',value: Math.round(Math.random()*1000)},
            {name: '达州市',value: Math.round(Math.random()*1000)},
            {name: '广元市',value: Math.round(Math.random()*1000)},
            {name: '雅安市',value: Math.round(Math.random()*1000)},
            {name: '宜宾市',value: Math.round(Math.random()*1000)},
            {name: '乐山市',value: Math.round(Math.random()*1000)},
            {name: '南充市',value: Math.round(Math.random()*1000)},
            {name: '巴中市',value: Math.round(Math.random()*1000)},
            {name: '泸州市',value: Math.round(Math.random()*1000)},
            {name: '成都市',value: Math.round(Math.random()*1000)},
            {name: '资阳市',value: Math.round(Math.random()*1000)},
            {name: '攀枝花市',value: Math.round(Math.random()*1000)},
            {name: '眉山市',value: Math.round(Math.random()*1000)},
            {name: '广安市',value: Math.round(Math.random()*1000)},
            {name: '德阳市',value: Math.round(Math.random()*1000)},
            {name: '内江市',value: Math.round(Math.random()*1000)},
            {name: '遂宁市',value: Math.round(Math.random()*1000)},
            {name: '自贡市',value: Math.round(Math.random()*1000)},
            {name: '黑河市',value: Math.round(Math.random()*1000)},
            {name: '大兴安岭地区',value: Math.round(Math.random()*1000)},
            {name: '哈尔滨市',value: Math.round(Math.random()*1000)},
            {name: '齐齐哈尔市',value: Math.round(Math.random()*1000)},
            {name: '牡丹江市',value: Math.round(Math.random()*1000)},
            {name: '绥化市',value: Math.round(Math.random()*1000)},
            {name: '伊春市',value: Math.round(Math.random()*1000)},
            {name: '佳木斯市',value: Math.round(Math.random()*1000)},
            {name: '鸡西市',value: Math.round(Math.random()*1000)},
            {name: '双鸭山市',value: Math.round(Math.random()*1000)},
            {name: '大庆市',value: Math.round(Math.random()*1000)},
            {name: '鹤岗市',value: Math.round(Math.random()*1000)},
            {name: '七台河市',value: Math.round(Math.random()*1000)},
            {name: '酒泉市',value: Math.round(Math.random()*1000)},
            {name: '张掖市',value: Math.round(Math.random()*1000)},
            {name: '甘南藏族自治州',value: Math.round(Math.random()*1000)},
            {name: '武威市',value: Math.round(Math.random()*1000)},
            {name: '陇南市',value: Math.round(Math.random()*1000)},
            {name: '庆阳市',value: Math.round(Math.random()*1000)},
            {name: '白银市',value: Math.round(Math.random()*1000)},
            {name: '定西市',value: Math.round(Math.random()*1000)},
            {name: '天水市',value: Math.round(Math.random()*1000)},
            {name: '兰州市',value: Math.round(Math.random()*1000)},
            {name: '平凉市',value: Math.round(Math.random()*1000)},
            {name: '临夏回族自治州',value: Math.round(Math.random()*1000)},
            {name: '金昌市',value: Math.round(Math.random()*1000)},
            {name: '嘉峪关市',value: Math.round(Math.random()*1000)},
            {name: '普洱市',value: Math.round(Math.random()*1000)},
            {name: '红河哈尼族彝族自治州',value: Math.round(Math.random()*1000)},
            {name: '文山壮族苗族自治州',value: Math.round(Math.random()*1000)},
            {name: '曲靖市',value: Math.round(Math.random()*1000)},
            {name: '楚雄彝族自治州',value: Math.round(Math.random()*1000)},
            {name: '大理白族自治州',value: Math.round(Math.random()*1000)},
            {name: '临沧市',value: Math.round(Math.random()*1000)},
            {name: '迪庆藏族自治州',value: Math.round(Math.random()*1000)},
            {name: '昭通市',value: Math.round(Math.random()*1000)},
            {name: '昆明市',value: Math.round(Math.random()*1000)},
            {name: '丽江市',value: Math.round(Math.random()*1000)},
            {name: '西双版纳傣族自治州',value: Math.round(Math.random()*1000)},
            {name: '保山市',value: Math.round(Math.random()*1000)},
            {name: '玉溪市',value: Math.round(Math.random()*1000)},
            {name: '怒江傈僳族自治州',value: Math.round(Math.random()*1000)},
            {name: '德宏傣族景颇族自治州',value: Math.round(Math.random()*1000)},
            {name: '百色市',value: Math.round(Math.random()*1000)},
            {name: '河池市',value: Math.round(Math.random()*1000)},
            {name: '桂林市',value: Math.round(Math.random()*1000)},
            {name: '南宁市',value: Math.round(Math.random()*1000)},
            {name: '柳州市',value: Math.round(Math.random()*1000)},
            {name: '崇左市',value: Math.round(Math.random()*1000)},
            {name: '来宾市',value: Math.round(Math.random()*1000)},
            {name: '玉林市',value: Math.round(Math.random()*1000)},
            {name: '梧州市',value: Math.round(Math.random()*1000)},
            {name: '贺州市',value: Math.round(Math.random()*1000)},
            {name: '钦州市',value: Math.round(Math.random()*1000)},
            {name: '贵港市',value: Math.round(Math.random()*1000)},
            {name: '防城港市',value: Math.round(Math.random()*1000)},
            {name: '北海市',value: Math.round(Math.random()*1000)},
            {name: '怀化市',value: Math.round(Math.random()*1000)},
            {name: '永州市',value: Math.round(Math.random()*1000)},
            {name: '邵阳市',value: Math.round(Math.random()*1000)},
            {name: '郴州市',value: Math.round(Math.random()*1000)},
            {name: '常德市',value: Math.round(Math.random()*1000)},
            {name: '湘西土家族苗族自治州',value: Math.round(Math.random()*1000)},
            {name: '衡阳市',value: Math.round(Math.random()*1000)},
            {name: '岳阳市',value: Math.round(Math.random()*1000)},
            {name: '益阳市',value: Math.round(Math.random()*1000)},
            {name: '长沙市',value: Math.round(Math.random()*1000)},
            {name: '株洲市',value: Math.round(Math.random()*1000)},
            {name: '张家界市',value: Math.round(Math.random()*1000)},
            {name: '娄底市',value: Math.round(Math.random()*1000)},
            {name: '湘潭市',value: Math.round(Math.random()*1000)},
            {name: '榆林市',value: Math.round(Math.random()*1000)},
            {name: '延安市',value: Math.round(Math.random()*1000)},
            {name: '汉中市',value: Math.round(Math.random()*1000)},
            {name: '安康市',value: Math.round(Math.random()*1000)},
            {name: '商洛市',value: Math.round(Math.random()*1000)},
            {name: '宝鸡市',value: Math.round(Math.random()*1000)},
            {name: '渭南市',value: Math.round(Math.random()*1000)},
            {name: '咸阳市',value: Math.round(Math.random()*1000)},
            {name: '西安市',value: Math.round(Math.random()*1000)},
            {name: '铜川市',value: Math.round(Math.random()*1000)},
            {name: '清远市',value: Math.round(Math.random()*1000)},
            {name: '韶关市',value: Math.round(Math.random()*1000)},
            {name: '湛江市',value: Math.round(Math.random()*1000)},
            {name: '梅州市',value: Math.round(Math.random()*1000)},
            {name: '河源市',value: Math.round(Math.random()*1000)},
            {name: '肇庆市',value: Math.round(Math.random()*1000)},
            {name: '惠州市',value: Math.round(Math.random()*1000)},
            {name: '茂名市',value: Math.round(Math.random()*1000)},
            {name: '江门市',value: Math.round(Math.random()*1000)},
            {name: '阳江市',value: Math.round(Math.random()*1000)},
            {name: '云浮市',value: Math.round(Math.random()*1000)},
            {name: '广州市',value: Math.round(Math.random()*1000)},
            {name: '汕尾市',value: Math.round(Math.random()*1000)},
            {name: '揭阳市',value: Math.round(Math.random()*1000)},
            {name: '珠海市',value: Math.round(Math.random()*1000)},
            {name: '佛山市',value: Math.round(Math.random()*1000)},
            {name: '潮州市',value: Math.round(Math.random()*1000)},
            {name: '汕头市',value: Math.round(Math.random()*1000)},
            {name: '深圳市',value: Math.round(Math.random()*1000)},
            {name: '东莞市',value: Math.round(Math.random()*1000)},
            {name: '中山市',value: Math.round(Math.random()*1000)},
            {name: '延边朝鲜族自治州',value: Math.round(Math.random()*1000)},
            {name: '吉林市',value: Math.round(Math.random()*1000)},
            {name: '白城市',value: Math.round(Math.random()*1000)},
            {name: '松原市',value: Math.round(Math.random()*1000)},
            {name: '长春市',value: Math.round(Math.random()*1000)},
            {name: '白山市',value: Math.round(Math.random()*1000)},
            {name: '通化市',value: Math.round(Math.random()*1000)},
            {name: '四平市',value: Math.round(Math.random()*1000)},
            {name: '辽源市',value: Math.round(Math.random()*1000)},
            {name: '承德市',value: Math.round(Math.random()*1000)},
            {name: '张家口市',value: Math.round(Math.random()*1000)},
            {name: '保定市',value: Math.round(Math.random()*1000)},
            {name: '唐山市',value: Math.round(Math.random()*1000)},
            {name: '沧州市',value: Math.round(Math.random()*1000)},
            {name: '石家庄市',value: Math.round(Math.random()*1000)},
            {name: '邢台市',value: Math.round(Math.random()*1000)},
            {name: '邯郸市',value: Math.round(Math.random()*1000)},
            {name: '秦皇岛市',value: Math.round(Math.random()*1000)},
            {name: '衡水市',value: Math.round(Math.random()*1000)},
            {name: '廊坊市',value: Math.round(Math.random()*1000)},
            {name: '恩施土家族苗族自治州',value: Math.round(Math.random()*1000)},
            {name: '十堰市',value: Math.round(Math.random()*1000)},
            {name: '宜昌市',value: Math.round(Math.random()*1000)},
            {name: '襄樊市',value: Math.round(Math.random()*1000)},
            {name: '黄冈市',value: Math.round(Math.random()*1000)},
            {name: '荆州市',value: Math.round(Math.random()*1000)},
            {name: '荆门市',value: Math.round(Math.random()*1000)},
            {name: '咸宁市',value: Math.round(Math.random()*1000)},
            {name: '随州市',value: Math.round(Math.random()*1000)},
            {name: '孝感市',value: Math.round(Math.random()*1000)},
            {name: '武汉市',value: Math.round(Math.random()*1000)},
            {name: '黄石市',value: Math.round(Math.random()*1000)},
            {name: '神农架林区',value: Math.round(Math.random()*1000)},
            {name: '天门市',value: Math.round(Math.random()*1000)},
            {name: '仙桃市',value: Math.round(Math.random()*1000)},
            {name: '潜江市',value: Math.round(Math.random()*1000)},
            {name: '鄂州市',value: Math.round(Math.random()*1000)},
            {name: '遵义市',value: Math.round(Math.random()*1000)},
            {name: '黔东南苗族侗族自治州',value: Math.round(Math.random()*1000)},
            {name: '毕节地区',value: Math.round(Math.random()*1000)},
            {name: '黔南布依族苗族自治州',value: Math.round(Math.random()*1000)},
            {name: '铜仁地区',value: Math.round(Math.random()*1000)},
            {name: '黔西南布依族苗族自治州',value: Math.round(Math.random()*1000)},
            {name: '六盘水市',value: Math.round(Math.random()*1000)},
            {name: '安顺市',value: Math.round(Math.random()*1000)},
            {name: '贵阳市',value: Math.round(Math.random()*1000)},
            {name: '烟台市',value: Math.round(Math.random()*1000)},
            {name: '临沂市',value: Math.round(Math.random()*1000)},
            {name: '潍坊市',value: Math.round(Math.random()*1000)},
            {name: '青岛市',value: Math.round(Math.random()*1000)},
            {name: '菏泽市',value: Math.round(Math.random()*1000)},
            {name: '济宁市',value: Math.round(Math.random()*1000)},
            {name: '德州市',value: Math.round(Math.random()*1000)},
            {name: '滨州市',value: Math.round(Math.random()*1000)},
            {name: '聊城市',value: Math.round(Math.random()*1000)},
            {name: '东营市',value: Math.round(Math.random()*1000)},
            {name: '济南市',value: Math.round(Math.random()*1000)},
            {name: '泰安市',value: Math.round(Math.random()*1000)},
            {name: '威海市',value: Math.round(Math.random()*1000)},
            {name: '日照市',value: Math.round(Math.random()*1000)},
            {name: '淄博市',value: Math.round(Math.random()*1000)},
            {name: '枣庄市',value: Math.round(Math.random()*1000)},
            {name: '莱芜市',value: Math.round(Math.random()*1000)},
            {name: '赣州市',value: Math.round(Math.random()*1000)},
            {name: '吉安市',value: Math.round(Math.random()*1000)},
            {name: '上饶市',value: Math.round(Math.random()*1000)},
            {name: '九江市',value: Math.round(Math.random()*1000)},
            {name: '抚州市',value: Math.round(Math.random()*1000)},
            {name: '宜春市',value: Math.round(Math.random()*1000)},
            {name: '南昌市',value: Math.round(Math.random()*1000)},
            {name: '景德镇市',value: Math.round(Math.random()*1000)},
            {name: '萍乡市',value: Math.round(Math.random()*1000)},
            {name: '鹰潭市',value: Math.round(Math.random()*1000)},
            {name: '新余市',value: Math.round(Math.random()*1000)},
            {name: '南阳市',value: Math.round(Math.random()*1000)},
            {name: '信阳市',value: Math.round(Math.random()*1000)},
            {name: '洛阳市',value: Math.round(Math.random()*1000)},
            {name: '驻马店市',value: Math.round(Math.random()*1000)},
            {name: '周口市',value: Math.round(Math.random()*1000)},
            {name: '商丘市',value: Math.round(Math.random()*1000)},
            {name: '三门峡市',value: Math.round(Math.random()*1000)},
            {name: '新乡市',value: Math.round(Math.random()*1000)},
            {name: '平顶山市',value: Math.round(Math.random()*1000)},
            {name: '郑州市',value: Math.round(Math.random()*1000)},
            {name: '安阳市',value: Math.round(Math.random()*1000)},
            {name: '开封市',value: Math.round(Math.random()*1000)},
            {name: '焦作市',value: Math.round(Math.random()*1000)},
            {name: '许昌市',value: Math.round(Math.random()*1000)},
            {name: '濮阳市',value: Math.round(Math.random()*1000)},
            {name: '漯河市',value: Math.round(Math.random()*1000)},
            {name: '鹤壁市',value: Math.round(Math.random()*1000)},
            {name: '大连市',value: Math.round(Math.random()*1000)},
            {name: '朝阳市',value: Math.round(Math.random()*1000)},
            {name: '丹东市',value: Math.round(Math.random()*1000)},
            {name: '铁岭市',value: Math.round(Math.random()*1000)},
            {name: '沈阳市',value: Math.round(Math.random()*1000)},
            {name: '抚顺市',value: Math.round(Math.random()*1000)},
            {name: '葫芦岛市',value: Math.round(Math.random()*1000)},
            {name: '阜新市',value: Math.round(Math.random()*1000)},
            {name: '锦州市',value: Math.round(Math.random()*1000)},
            {name: '鞍山市',value: Math.round(Math.random()*1000)},
            {name: '本溪市',value: Math.round(Math.random()*1000)},
            {name: '营口市',value: Math.round(Math.random()*1000)},
            {name: '辽阳市',value: Math.round(Math.random()*1000)},
            {name: '盘锦市',value: Math.round(Math.random()*1000)},
            {name: '忻州市',value: Math.round(Math.random()*1000)},
            {name: '吕梁市',value: Math.round(Math.random()*1000)},
            {name: '临汾市',value: Math.round(Math.random()*1000)},
            {name: '晋中市',value: Math.round(Math.random()*1000)},
            {name: '运城市',value: Math.round(Math.random()*1000)},
            {name: '大同市',value: Math.round(Math.random()*1000)},
            {name: '长治市',value: Math.round(Math.random()*1000)},
            {name: '朔州市',value: Math.round(Math.random()*1000)},
            {name: '晋城市',value: Math.round(Math.random()*1000)},
            {name: '太原市',value: Math.round(Math.random()*1000)},
            {name: '阳泉市',value: Math.round(Math.random()*1000)},
            {name: '六安市',value: Math.round(Math.random()*1000)},
            {name: '安庆市',value: Math.round(Math.random()*1000)},
            {name: '滁州市',value: Math.round(Math.random()*1000)},
            {name: '宣城市',value: Math.round(Math.random()*1000)},
            {name: '阜阳市',value: Math.round(Math.random()*1000)},
            {name: '宿州市',value: Math.round(Math.random()*1000)},
            {name: '黄山市',value: Math.round(Math.random()*1000)},
            {name: '巢湖市',value: Math.round(Math.random()*1000)},
            {name: '亳州市',value: Math.round(Math.random()*1000)},
            {name: '池州市',value: Math.round(Math.random()*1000)},
            {name: '合肥市',value: Math.round(Math.random()*1000)},
            {name: '蚌埠市',value: Math.round(Math.random()*1000)},
            {name: '芜湖市',value: Math.round(Math.random()*1000)},
            {name: '淮北市',value: Math.round(Math.random()*1000)},
            {name: '淮南市',value: Math.round(Math.random()*1000)},
            {name: '马鞍山市',value: Math.round(Math.random()*1000)},
            {name: '铜陵市',value: Math.round(Math.random()*1000)},
            {name: '南平市',value: Math.round(Math.random()*1000)},
            {name: '三明市',value: Math.round(Math.random()*1000)},
            {name: '龙岩市',value: Math.round(Math.random()*1000)},
            {name: '宁德市',value: Math.round(Math.random()*1000)},
            {name: '福州市',value: Math.round(Math.random()*1000)},
            {name: '漳州市',value: Math.round(Math.random()*1000)},
            {name: '泉州市',value: Math.round(Math.random()*1000)},
            {name: '莆田市',value: Math.round(Math.random()*1000)},
            {name: '厦门市',value: Math.round(Math.random()*1000)},
            {name: '丽水市',value: Math.round(Math.random()*1000)},
            {name: '杭州市',value: Math.round(Math.random()*1000)},
            {name: '温州市',value: Math.round(Math.random()*1000)},
            {name: '宁波市',value: Math.round(Math.random()*1000)},
            {name: '舟山市',value: Math.round(Math.random()*1000)},
            {name: '台州市',value: Math.round(Math.random()*1000)},
            {name: '金华市',value: Math.round(Math.random()*1000)},
            {name: '衢州市',value: Math.round(Math.random()*1000)},
            {name: '绍兴市',value: Math.round(Math.random()*1000)},
            {name: '嘉兴市',value: Math.round(Math.random()*1000)},
            {name: '湖州市',value: Math.round(Math.random()*1000)},
            {name: '盐城市',value: Math.round(Math.random()*1000)},
            {name: '徐州市',value: Math.round(Math.random()*1000)},
            {name: '南通市',value: Math.round(Math.random()*1000)},
            {name: '淮安市',value: Math.round(Math.random()*1000)},
            {name: '苏州市',value: Math.round(Math.random()*1000)},
            {name: '宿迁市',value: Math.round(Math.random()*1000)},
            {name: '连云港市',value: Math.round(Math.random()*1000)},
            {name: '扬州市',value: Math.round(Math.random()*1000)},
            {name: '南京市',value: Math.round(Math.random()*1000)},
            {name: '泰州市',value: Math.round(Math.random()*1000)},
            {name: '无锡市',value: Math.round(Math.random()*1000)},
            {name: '常州市',value: Math.round(Math.random()*1000)},
            {name: '镇江市',value: Math.round(Math.random()*1000)},
            {name: '吴忠市',value: Math.round(Math.random()*1000)},
            {name: '中卫市',value: Math.round(Math.random()*1000)},
            {name: '固原市',value: Math.round(Math.random()*1000)},
            {name: '银川市',value: Math.round(Math.random()*1000)},
            {name: '石嘴山市',value: Math.round(Math.random()*1000)},
            {name: '儋州市',value: Math.round(Math.random()*1000)},
            {name: '文昌市',value: Math.round(Math.random()*1000)},
            {name: '乐东黎族自治县',value: Math.round(Math.random()*1000)},
            {name: '三亚市',value: Math.round(Math.random()*1000)},
            {name: '琼中黎族苗族自治县',value: Math.round(Math.random()*1000)},
            {name: '东方市',value: Math.round(Math.random()*1000)},
            {name: '海口市',value: Math.round(Math.random()*1000)},
            {name: '万宁市',value: Math.round(Math.random()*1000)},
            {name: '澄迈县',value: Math.round(Math.random()*1000)},
            {name: '白沙黎族自治县',value: Math.round(Math.random()*1000)},
            {name: '琼海市',value: Math.round(Math.random()*1000)},
            {name: '昌江黎族自治县',value: Math.round(Math.random()*1000)},
            {name: '临高县',value: Math.round(Math.random()*1000)},
            {name: '陵水黎族自治县',value: Math.round(Math.random()*1000)},
            {name: '屯昌县',value: Math.round(Math.random()*1000)},
            {name: '定安县',value: Math.round(Math.random()*1000)},
            {name: '保亭黎族苗族自治县',value: Math.round(Math.random()*1000)},
            
            {name: '广东',value: Math.round(Math.random()*1000)},
            {name: '青海',value: Math.round(Math.random()*1000)},
            {name: '四川',value: Math.round(Math.random()*1000)},
            {name: '陕西',value: Math.round(Math.random()*1000)},
           /* '贵州', '山东', '江西', '河南', '河北',
	 	    '山西', '安徽', '福建', '浙江', '江苏', 
	 	    '吉林', '辽宁', '台湾',
	 	    // 5个自治区
	 	    '新疆', '广西', '宁夏', '内蒙古', '西藏', */
	 	    
            
            {name: '五指山市',value: Math.round(Math.random()*1000)}
        ];
	var pSize='${scrollviewPageSize}'; //分页的大小
	
	function queryValidate()
	{
		var isSuccess=true;
		var msg="";
		
		if($("#year").combobox("getValues")==""){
			isSuccess=false;
			msg+="<span style = 'color:red'>查询时间不能为空！<span/><br>";
		}
		if(getSelectedCheckbox('parameterTarget')==""){
			isSuccess=false;
			msg+="<span style = 'color:red'>指标不能为空！<span/><br>";
		}
		// 	 station_values
		if($("#station_values").val()==""){
			isSuccess=false;
			msg+="<span style = 'color:red'>航站不能为空！<span/><br>";
		}
		if(!isSuccess){
			$.messager.show({title:'错误信息',msg:msg,width:335,height:150,showType:'show',style:{right:'',top:document.body.scrollTop+document.documentElement.scrollTop+'30px',bottom:''}});
		}
		
		return isSuccess;
	}
	jQuery(function($)
	{
		$('#station_type').click(function()
		{
			var selectValue=$("#station_type").val();
			console.info(selectValue);
			if(selectValue=='custom-group'){
				$("#station_values").attr('placeholder','点击展出单选下拉框');
			}else{
				$("#station_values").attr('placeholder','点击弹出选择框');
			}
		});
		
		var the_year_data=getYearData();
		$("#year").combobox({data:the_year_data,valueField:"id",textField:"text",multiple:true,editable:false});
		var weekData=[
				{"id":"1","text":"周一"},{"id":"2","text":"周二"},{"id":"3","text":"周三"},{"id":"4","text":"周四"},{"id":"5","text":"周五"},{"id":"6","text":"周六"},{"id":"7","text":"周日"}
		];
		$('#week').combobox({data:weekData,prompt:"默认全选",valueField:'id',textField:'text',multiple:true,editable:false});
		
		//时间维度下面的checkBox至少选中一个。航段下的checkBox至少选中一个。
		$("#selectTime :checkbox,#airline_Id :checkbox").click(function()
		{
			var flag=true;
			$(this.parentNode.childNodes).each(function()
			{
				if($(this).attr("checked")=="checked") flag=false;
			});
			if(flag) $(this).attr("checked",true);
		});
		
		var dateTypeName="";
		$('#selectTime').tabs({onSelect:function(title)
		{
			var dtType=title.substring(title.indexOf(">")+1,title.indexOf('</lable>'));
			$('#dtType').val(dtType);
			dateTypeName=title.substring(0,title.indexOf('<lable'));
			$("#selectTime .tabs-panels .panel div input[type='checkbox']:checked").attr('checked',false);
			$("#selectTime .tabs-panels .panel div input[type='text']:checked").val("");
			
			//第一个默认为选中。
			$(".firstDimension").attr('checked',true);
		}});
		
		var TypecolumnName="进出港";
		$('#tab_airport_type').tabs({onSelect:function(title)
		{
			// 			   $("#tab_airport_type .tabs-panels .panel  div input[type='checkbox']").attr('checked',false); 
			$("#tab_airport_type .tabs-panels .panel  div input[type='text']").val("");
			TypecolumnName=title;
			if(title=='进出港'){
				$('#airportType').val(1);
			}else if(title=='往返地'){
				$('#airportType').val(2);
			}
		}});
		
		$("#customStation").mouseleave(function()
		{
			$("#customStation").hide();
		});
		
		$("a[name='a_customStation']").live('click',function()
		{
			$("#station_values").val($(this).text());
			$("#customStation").hide();
		});
		
		$.post("${ctx}/oi4airport/getStationByUserId.adm?stationType=CUSTOM_GROUP",function(data)
		{
			if(data.length>0){
				var customStationArr=data;
				
				var theAirportsData=data.customAirports;
				var theAirlinesData=data.customAirlines;
				var theFlightcodesData=data.customFlights;
				
				$.each(customStationArr,function(i,data)
				{
					var a="<a href='#' name='a_customStation' >";
					a+=data.CUSTOM_GROUP;
					a+="</a>";
					$("#stationUl").append(a);
				});
				
			}else{
				$("#stationUl").empty();
			}
		});
		
		$("#btn-inquiry").click(function()
		{
			if(!queryValidate()) return;
			var dateStr="";
			var current_tab_plane=$('#selectTime').tabs('getSelected');
			var tab=current_tab_plane.panel('options').tab;
			var inputs=current_tab_plane.children("input");
			inputs.each(function(i,inp)
			{
				if("text"==inp.type){
					dateStr=inp.value;
				}else if("checkbox"==inp.type){
					if('checked'==inp.checked||inp.checked==true) dateStr=dateStr+inp.value+',';
				}
			});
			
			var dateArray=dateStr.split(",");
			var weeks=$('#week').combobox("getValues");
			var years=$('#year').combobox("getValues");
			
			var queryTemp={};
			queryTemp['weeks']=JSON.stringify(weeks);
			queryTemp['years']=JSON.stringify(years);
			//dateType时间类型：全年-year；半年-halfYear，月份-month；季度-QU；航季-fltQu；任意天-day
			queryTemp['dateType']=$("#dtType").val();
			queryTemp['searchDate']=JSON.stringify(dateArray);
			//查询航站类型：航站-AIRPORT_CD、省份-AIRPORT_PR、区域-AIRPORT_REG、自定义组-custom-group
			queryTemp['stationType']=$("#station_type").val();
			//多选航站/省份/区域，或单选自定义组
			var stations=$("#station_values").val().split(",");
			queryTemp['stations']=JSON.stringify(stations);
			//航线分析类型: 进出港-1; 往返地-2
			var airportType=$('#airportType').val();
			queryTemp['airportType']=airportType;
			
			//航站类型
			if("1"==airportType){
				//航线类型-- 进出港，查询结果包含国内航线-GN、国际航线-GJ、地区航线-DQ
				queryTemp['airlineTypes']=JSON.stringify(getSelectedCheckbox('airline_Id'));//['GN','GJ','DQ']
			}else if("2"==airportType){
				//航线类型-- 往返地，往返地级别是航站级-AIRPORT_CD、省份级-AIRPORT_PR、区域级-AIRPORT_REG
				queryTemp['atInStationType']=$('#dpt-select').val();
			}
			queryTemp['rows']=pSize; //分页的大小传入rows中去
			queryTemp['cityFlag']="0";
			queryTemp['districtFlag']="0";
			var params={};
			var flags=getSelectedCheckbox('parameterTarget');
			params['flags']=JSON.stringify(getSelectedCheckbox('parameterTarget'));
			params['querys']=JSON.stringify(queryTemp);
			parent.params_station['flags']=JSON.stringify(getSelectedCheckbox('parameterTarget'));
			parent.params_station['querys']=queryTemp;
			parent.params_station['TypecolumnName']=TypecolumnName;
			parent.params_station['dateTypeName']=dateTypeName;
			
			frozencolumns=[
				[
						{field:'YEAR',title:'年份'},{field:'STATIONREF',title:'航站',width:widthColumnAirline},{field:'STATIONS',title:'AIRPORT_CODE',hidden:true},
						{field:'OITYPE',title:TypecolumnName,width:widthColumnAirline},{field:'STATIONS2',title:'AIRPORT_CODE2',hidden:true}
				]
			];
			
			if(flags.length==1){
				if(flags[0]=='ages'){
					columns=columnsD=[
						[
								/* {field:'A',title:'0-12'},{field:'B',title:'13-18'},{field:'C',title:'19-22'},{field:'D',title:'23-25'},{field:'E',title:'26-30'},{field:'F',title:'31-35'},
								{field:'G',title:'36-40'},{field:'H',title:'41-45'},{field:'I',title:'46-50'},{field:'J',title:'51-60'},{field:'K',title:'61-70'},{field:'L',title:'70+'},
								{field:'OTHERS',title:'其他'} */
								{field:'A',title:'0-12',width:widthColumn},{field:'B',title:'13-18',width:widthColumn},{field:'C',title:'19-22',width:widthColumn},
								{field:'D',title:'23-25',width:widthColumn},{field:'E',title:'26-30',width:widthColumn},{field:'F',title:'31-35',width:widthColumn},
								{field:'G',title:'36-40',width:widthColumn},{field:'H',title:'41-45',width:widthColumn},{field:'I',title:'46-50',width:widthColumn},
								{field:'J',title:'51-60',width:widthColumn},{field:'K',title:'61-70',width:widthColumn},{field:'L',title:'70+',width:widthColumn},
								{field:'OTHERS',title:'其他',width:widthColumn}
						]
					];
				}else if(flags[0]=='price'){
					columns=columnsD=[
						[
								/* {field:'A',title:'0'},{field:'B',title:'(0-5]'},{field:'C',title:'(5-10]'},{field:'D',title:'(10-15]'},{field:'E',title:'(15-20]'},{field:'F',title:'(20-25]'},
								{field:'G',title:'(25-30]'},{field:'H',title:'(30-35]'},{field:'I',title:'(35-40]'},{field:'J',title:'(40-45]'},{field:'K',title:'(45-50]'},
								{field:'L',title:'(50-55]'},{field:'M',title:'(55-60]'},{field:'N',title:'(60-65]'},{field:'O',title:'(65-70]'},{field:'P',title:'(70-75]'},
								{field:'Q',title:'(75-80]'},{field:'R',title:'(80-85]'},{field:'S',title:'(85-90]'},{field:'T',title:'(90-95]'},{field:'U',title:'(95-100]'},
								{field:'V',title:'(100-110]'},{field:'W',title:'(110-120]'},{field:'X',title:'(120-130]'},{field:'Y',title:'(130-140]'},{field:'Z',title:'(140-150]'},
								{field:'AA',title:'(150-160]'},{field:'BB',title:'(160-170]'},{field:'CC',title:'(170-180]'},{field:'DD',title:'(180-190]'},{field:'EE',title:'(190-200]'},
								{field:'FF',title:'(200-210]'},{field:'GG',title:'(210-220]'},{field:'HH',title:'(220-230]'},{field:'II',title:'(230-240]'},{field:'JJ',title:'(240-250]'},
								{field:'KK',title:'(250-260]'},{field:'LL',title:'(260-270]'},{field:'MM',title:'(270-280]'},{field:'NN',title:'(280-290]'},{field:'OO',title:'(290-300]'},
								{field:'PP',title:'300+'} */
								{field:'A',title:'0',width:widthColumn},{field:'B',title:'(0-5]',width:widthColumn},{field:'C',title:'(5-10]',width:widthColumn},{field:'D',title:'(10-15]',width:widthColumn},
								{field:'E',title:'(15-20]',width:widthColumn},{field:'F',title:'(20-25]',width:widthColumn},{field:'G',title:'(25-30]',width:widthColumn},
								{field:'H',title:'(30-35]',width:widthColumn},{field:'I',title:'(35-40]',width:widthColumn},{field:'J',title:'(40-45]',width:widthColumn},
								{field:'K',title:'(45-50]',width:widthColumn},{field:'L',title:'(50-55]',width:widthColumn},{field:'M',title:'(55-60]',width:widthColumn},
								{field:'N',title:'(60-65]',width:widthColumn},{field:'O',title:'(65-70]',width:widthColumn},{field:'P',title:'(70-75]',width:widthColumn},
								{field:'Q',title:'(75-80]',width:widthColumn},{field:'R',title:'(80-85]',width:widthColumn},{field:'S',title:'(85-90]',width:widthColumn},
								{field:'T',title:'(90-95]',width:widthColumn},{field:'U',title:'(95-100]',width:widthColumn},{field:'V',title:'(100-110]',width:widthColumn},
								{field:'W',title:'(110-120]',width:widthColumn},{field:'X',title:'(120-130]',width:widthColumn},{field:'Y',title:'(130-140]',width:widthColumn},
								{field:'Z',title:'(140-150]',width:widthColumn},{field:'AA',title:'(150-160]',width:widthColumn},{field:'BB',title:'(160-170]',width:widthColumn},
								{field:'CC',title:'(170-180]',width:widthColumn},{field:'DD',title:'(180-190]',width:widthColumn},{field:'EE',title:'(190-200]',width:widthColumn},
								{field:'FF',title:'(200-210]',width:widthColumn},{field:'GG',title:'(210-220]',width:widthColumn},{field:'HH',title:'(220-230]',width:widthColumn},
								{field:'II',title:'(230-240]',width:widthColumn},{field:'JJ',title:'(240-250]',width:widthColumn},{field:'KK',title:'(250-260]',width:widthColumn},
								{field:'LL',title:'(260-270]',width:widthColumn},{field:'MM',title:'(270-280]',width:widthColumn},{field:'NN',title:'(280-290]',width:widthColumn},
								{field:'OO',title:'(290-300]',width:widthColumn},{field:'PP',title:'300+',width:widthColumn}
						]
					];
				}else if(flags[0]=='issuedt'){
					columns=columnsD=[
						[
								/* {field:'A',title:'当天'},{field:'B',title:'1天'},{field:'C',title:'2天'},{field:'D',title:'3天'},{field:'E',title:'4天'},{field:'F',title:'5天'},{field:'G',title:'6天'},
								{field:'H',title:'7天'},{field:'I',title:'8天'},{field:'J',title:'9天'},{field:'K',title:'10天'},{field:'L',title:'11天'},{field:'M',title:'12天'},{field:'N',title:'13天'},
								{field:'O',title:'14天'},{field:'P',title:'15天'},{field:'Q',title:'16天'},{field:'R',title:'17天'},{field:'S',title:'18天'},{field:'T',title:'19天'},
								{field:'U',title:'20天'},{field:'V',title:'21天'},{field:'W',title:'22天'},{field:'X',title:'23天'},{field:'Y',title:'24天'},{field:'Z',title:'25天'},
								{field:'AA',title:'26天'},{field:'BB',title:'27天'},{field:'CC',title:'28天'},{field:'DD',title:'29天'},{field:'EE',title:'30天'},{field:'FF',title:'31天'},
								{field:'GG',title:'2个月'},{field:'HH',title:'3个月'},{field:'II',title:'4个月'},{field:'JJ',title:'5个月'},{field:'KK',title:'6个月'},{field:'LL',title:'7个月'},
								{field:'MM',title:'8个月'},{field:'NN',title:'9个月'},{field:'OO',title:'10个月'},{field:'PP',title:'11个月'},{field:'QQ',title:'12个月'} */
								{field:'A',title:'当天',width:widthColumn},{field:'B',title:'1天',width:widthColumn},{field:'C',title:'2天',width:widthColumn},
								{field:'D',title:'3天',width:widthColumn},{field:'E',title:'4天',width:widthColumn},{field:'F',title:'5天',width:widthColumn},{field:'G',title:'6天',width:widthColumn},
								{field:'H',title:'7天',width:widthColumn},{field:'I',title:'8天',width:widthColumn},{field:'J',title:'9天',width:widthColumn},{field:'K',title:'10天',width:widthColumn},
								{field:'L',title:'11天',width:widthColumn},{field:'M',title:'12天',width:widthColumn},{field:'N',title:'13天',width:widthColumn},{field:'O',title:'14天',width:widthColumn},
								{field:'P',title:'15天',width:widthColumn},{field:'Q',title:'16天',width:widthColumn},{field:'R',title:'17天',width:widthColumn},{field:'S',title:'18天',width:widthColumn},
								{field:'T',title:'19天',width:widthColumn},{field:'U',title:'20天',width:widthColumn},{field:'V',title:'21天',width:widthColumn},{field:'W',title:'22天',width:widthColumn},
								{field:'X',title:'23天',width:widthColumn},{field:'Y',title:'24天',width:widthColumn},{field:'Z',title:'25天',width:widthColumn},{field:'AA',title:'26天',width:widthColumn},
								{field:'BB',title:'27天',width:widthColumn},{field:'CC',title:'28天',width:widthColumn},{field:'DD',title:'29天',width:widthColumn},{field:'EE',title:'30天',width:widthColumn},
								{field:'FF',title:'31天',width:widthColumn},{field:'GG',title:'2个月',width:widthColumn},{field:'HH',title:'3个月',width:widthColumn},{field:'II',title:'4个月',width:widthColumn},
								{field:'JJ',title:'5个月',width:widthColumn},{field:'KK',title:'6个月',width:widthColumn},{field:'LL',title:'7个月',width:widthColumn},{field:'MM',title:'8个月',width:widthColumn},
								{field:'NN',title:'9个月',width:widthColumn},{field:'OO',title:'10个月',width:widthColumn},{field:'PP',title:'11个月',width:widthColumn},{field:'QQ',title:'12个月',width:widthColumn}
						]
					];
				}else if(flags[0]=='groups'){
					columns=columnsD=[
						[
								/* {field:'A',title:'团队人数'},{field:'B',title:'团队比例'},{field:'C',title:'散客人数'},{field:'D',title:'散客比例'} */
								{field:'A',title:'团队人数',width:widthColumn},{field:'B',title:'团队比例',width:widthColumn},
								{field:'C',title:'散客人数',width:widthColumn},{field:'D',title:'散客比例',width:widthColumn}
						]
					];
				}else if(flags[0]=='sex'){
					columns=columnsD=[
						[
								/* {field:'A',title:'男'},{field:'B',title:'女'},{field:'C',title:'其他'} */
								{field:'A',title:'男',width:widthColumn},{field:'B',title:'女',width:widthColumn},{field:'C',title:'其他',width:widthColumn}
						]
					];
				}else if(flags[0]=='flttime'){
					columns=columnsD=[
						[
								/* {field:'A',title:'0点'},{field:'B',title:'1点'},{field:'C',title:'2点'},{field:'D',title:'3点'},{field:'E',title:'4点'},{field:'F',title:'5点'},{field:'G',title:'6点'},
								{field:'H',title:'7点'},{field:'I',title:'8点'},{field:'J',title:'9点'},{field:'K',title:'10点'},{field:'L',title:'11点'},{field:'M',title:'12点'},{field:'N',title:'13点'},
								{field:'O',title:'14点'},{field:'P',title:'15点'},{field:'Q',title:'16点'},{field:'R',title:'17点'},{field:'S',title:'18点'},{field:'T',title:'19点'},
								{field:'U',title:'20点'},{field:'V',title:'21点'},{field:'W',title:'22点'},{field:'X',title:'23点'} */
								{field:'A',title:'0点',width:widthColumn},{field:'B',title:'1点',width:widthColumn},{field:'C',title:'2点',width:widthColumn},{field:'D',title:'3点',width:widthColumn},
								{field:'E',title:'4点',width:widthColumn},{field:'F',title:'5点',width:widthColumn},{field:'G',title:'6点',width:widthColumn},{field:'H',title:'7点',width:widthColumn},
								{field:'I',title:'8点',width:widthColumn},{field:'J',title:'9点',width:widthColumn},{field:'K',title:'10点',width:widthColumn},{field:'L',title:'11点',width:widthColumn},
								{field:'M',title:'12点',width:widthColumn},{field:'N',title:'13点',width:widthColumn},{field:'O',title:'14点',width:widthColumn},{field:'P',title:'15点',width:widthColumn},
								{field:'Q',title:'16点',width:widthColumn},{field:'R',title:'17点',width:widthColumn},{field:'S',title:'18点',width:widthColumn},{field:'T',title:'19点',width:widthColumn},
								{field:'U',title:'20点',width:widthColumn},{field:'V',title:'21点',width:widthColumn},{field:'W',title:'22点',width:widthColumn},{field:'X',title:'23点',width:widthColumn}
						]
					];
				}else if(flags[0]=='peers'){
					columns=columnsD=[
						[
								/* {field:'A',title:'同行1人'},{field:'B',title:'同行2人'},{field:'C',title:'同行3人'},{field:'D',title:'同行4人'},{field:'E',title:'同行5人'},{field:'F',title:'同行6人'},
								{field:'G',title:'同行7人'},{field:'H',title:'同行8人'},{field:'I',title:'同行9人'},{field:'J',title:'同行10人'} */
								{field:'A',title:'同行1人',width:widthColumn},{field:'B',title:'同行2人',width:widthColumn},{field:'C',title:'同行3人',width:widthColumn},
								{field:'D',title:'同行4人',width:widthColumn},{field:'E',title:'同行5人',width:widthColumn},{field:'F',title:'同行6人',width:widthColumn},
								{field:'G',title:'同行7人',width:widthColumn},{field:'H',title:'同行8人',width:widthColumn},{field:'I',title:'同行9人',width:widthColumn},
								{field:'J',title:'同行10人',width:widthColumn}
						]
					];
				}else if(flags[0]=='hometown'){
					columns=[
						[
								{field:'A',title:'省',width:'50px',
								//添加超级链 
								formatter:function(value,row,index)
								{
									//function里面的三个参数代表当前字段值，当前行数据对象，行号（行号从0开始）
									return '<a href="#" onclick="openCity(\''+row.YEAR+'\',\''+row.STATIONS+'\',\''+row.STATIONS2+'\',\''+value+'\');">'+value+'</a>';
								}},{field:'B',title:'人数',width:widthColumn}
						]
					];
					columnsD=[
						[
								{field:'A',title:'省',width:'50px'},{field:'B',title:'人数',width:widthColumn}
						]
					];
				}
			}else if(flags.length>1){
				$.messager.alert("操作提示","本模块是单指标查询","info");
			}
			
			if(flags[0]=='hometown'){
				//alert(123);
				$("#searchPanelId").panel('collapse');
				initSeachMap();
				return;
			}
			
			$('#totalGrid').datagrid({
				title:'合计表',
				method:'post',
				iconCls:'icon-edit',
				singleSelect:true,
				fitColumns:true,
				height:260,
				columns:columns,
				frozenColumns:frozencolumns,
				view:$.extend({}, bufferview),
				rownumbers:true,
				autoRowHeight:false,
				pageSize:pSize,
				loadFilter:pubLoadFilter,
				url:"${ctx}/marketoi4airport/getTotalGrid.adm",
				queryParams:params,
				onDblClickCell:function(rowIndex,field,value)
				{
					if(TypecolumnName=='进出港'){
						detailfrozencolumns=[
							[
									{field:'YEAR',title:'年份'},{field:'DT',title:dateTypeName,width:'50px'},
									{field:'STATIONREF',title:'航站',width:widthColumnAirline},{field:'OITYPE',title:'进出港'}
							]
						];
					}else{
						detailfrozencolumns=[
							[
									{field:'YEAR',title:'年份'},{field:'DT',title:dateTypeName,width:'50px'},
									{field:'DEP',title:'来源',width:widthColumnAirline},{field:'STATIONREF',title:'航站',width:widthColumnAirline},{field:'ARR',title:'流向',width:widthColumnAirline}
							]
						];
					}
					
					var row=$('#totalGrid').datagrid('getSelected');
					params['selectedStation']=row.STATIONS+","+row.STATIONS2;
					params['selectedYear']=row.YEAR;
					$('#detailGrid').datagrid({
						title:'明细表',method:'post',iconCls:'icon-edit',singleSelect:true,fitColumns:true,height:160,columns:columnsD,frozenColumns:detailfrozencolumns,view:$.extend({}, bufferview),rownumbers:true,
						autoRowHeight:false,pageSize:pSize,loadFilter:pubLoadFilter,url:"${ctx}/marketoi4airport/getDetailGrid.adm",queryParams:params});
				}});
			$("#searchPanelId").panel('collapse');
			
		});
		$('#station_values').click(selectAirports);
	});
	
	function exportExcel()
	{
		if(!queryValidate()) return;
		exportExcelAlert();
		var flags=getSelectedCheckbox('parameterTarget');
		var dateStr="";
		var current_tab_plane=$('#selectTime').tabs('getSelected');
		var tab=current_tab_plane.panel('options').tab;
		var inputs=current_tab_plane.children("input");
		inputs.each(function(i,inp)
		{
			if("text"==inp.type){
				dateStr=inp.value;
			}else if("checkbox"==inp.type){
				if('checked'==inp.checked||inp.checked==true) dateStr=dateStr+inp.value+',';
			}
		});
		
		var dateArray=dateStr.split(",");
		var weeks=$('#week').combobox("getValues");
		var years=$('#year').combobox("getValues");
		
		var queryTemp={};
		queryTemp['weeks']=JSON.stringify(weeks);
		queryTemp['years']=JSON.stringify(years);
		//dateType时间类型：全年-year；半年-halfYear，月份-month；季度-QU；航季-fltQu；任意天-day
		queryTemp['dateType']=$("#dtType").val();
		queryTemp['searchDate']=JSON.stringify(dateArray);
		//查询航站类型：航站-AIRPORT_CD、省份-AIRPORT_PR、区域-AIRPORT_REG、自定义组-custom-group
		queryTemp['stationType']=$("#station_type").val();
		//多选航站/省份/区域，或单选自定义组
		var stations=$("#station_values").val().split(",");
		queryTemp['stations']=JSON.stringify(stations);
		//航线分析类型: 进出港-1; 往返地-2
		var airportType=$('#airportType').val();
		queryTemp['airportType']=airportType;
		
		//航站类型
		if("1"==airportType){
			//航线类型-- 进出港，查询结果包含国内航线-GN、国际航线-GJ、地区航线-DQ
			queryTemp['airlineTypes']=JSON.stringify(getSelectedCheckbox('airline_Id'));//['GN','GJ','DQ']
		}else if("2"==airportType){
			//航线类型-- 往返地，往返地级别是航站级-AIRPORT_CD、省份级-AIRPORT_PR、区域级-AIRPORT_REG
			queryTemp['atInStationType']=$('#dpt-select').val();
		}
		queryTemp['cityFlag']="0";
		queryTemp['districtFlag']="0";
		var params={};
		var flags=getSelectedCheckbox('parameterTarget');
		params['flags']=JSON.stringify(getSelectedCheckbox('parameterTarget'));
		params['querys']=JSON.stringify(queryTemp);
		
		$("#flags").val(params['flags']);
		$("#querys").val(params['querys']);
		$('#excelExport').submit();
	}

	function selectAirports()
	{
		var stationType=$('#station_type').val();
		if('custom-group'==stationType){
			if(!(''==$("#stationUl").html())){
				var p=$('#station_values');
				var position=p.position();
				$("#customStation").css("left",position.left+"px");
				$("#customStation").css("top",position.top+22+"px");
				$("#customStation").show();
			}
		}else{
			$("#MyPopWindow").window({href:'${ctx}/pages/basic_run/theAirportSelect.jsp',width:230,title:'航站信息选择',height:380,onLoad:function()
			{
				if('AIRPORT_CD'==stationType){
					$('#stationTable').datagrid({title:'航站列表', //标题
					method:'post',iconCls:'icon-edit', //图标
					singleSelect:false, //多选
					fitColumns:true, //自动调整各列，用了这个属性，下面各列的宽度值就只是一个比例。
					striped:true, //奇偶行颜色不同
					collapsible:true,//可折叠
					url:"${ctx}/oi4airport/getStationByUserId.adm?stationType=AIRPORT_CD",sortName:'AIRPORT_CD', //默认排序的列
					sortOrder:'desc', //默认排序方式-倒序
					remoteSort:true, //服务器端排序
					loadMsg:'处理中...',height:250,queryParams:{},pagination:false, //显示分页
					rownumbers:true, //显示行号
					columns:[
						[
							{field:'AIRPORT_CD',title:'航站',width:47}
						]
					],onLoadSuccess:function()
					{
						var rows=$('#stationTable').datagrid("getRows");
						var stationValues=$('#station_values').val().split(',');
						$.each(stationValues,function(i,temp)
						{
							$.each(rows,function(k,row)
							{
								if(rows[k].AIRPORT_CD==temp){
									$('#stationTable').datagrid("selectRow",k);
								}else if(rows[k].SELECTED==0){
									$('#stationTable').datagrid("selectRow",k);
								}
							});
						});
					},onSelect:function(rowIndex,rowData)
					{
						var rows=$('#stationTable').datagrid("getSelections");
						var datas=new Array();
						$('#selections').val("");
						$.each(rows,function(i,row)
						{//设置查询参数
							datas.push(row.AIRPORT_CD);
						});
						$('#selections').val(datas);
						
					},onUnselect:function(rowIndex,rowData)
					{
						var rows=$('#stationTable').datagrid("getSelections");
						var datas=new Array();
						$('#selections').val("");
						$.each(rows,function(i,row)
						{//设置查询参数
							datas.push(row.AIRPORT_CD);
						});
						$('#selections').val(datas);
					}});
				}else if('AIRPORT_PR'==stationType){
					$('#stationTable').datagrid({title:'省份列表', //标题
					method:'post',iconCls:'icon-edit', //图标
					singleSelect:false, //多选
					fitColumns:true, //自动调整各列，用了这个属性，下面各列的宽度值就只是一个比例。
					striped:true, //奇偶行颜色不同
					collapsible:true,//可折叠
					url:"${ctx}/oi4airport/getStationByUserId.adm?stationType=AIRPORT_PR",sortName:'AIRPORT_PR', //默认排序的列
					sortOrder:'desc', //默认排序方式-倒序
					remoteSort:true, //服务器端排序
					loadMsg:'处理中...',height:260,queryParams:{},pagination:false, //显示分页
					rownumbers:true, //显示行号
					columns:[
						[
							{field:'AIRPORT_PR',title:'省份',width:25}
						]
					],onLoadSuccess:function()
					{
						var rows=$('#stationTable').datagrid("getRows");
						var stationValues=$('#station_values').val().split(',');
						$.each(stationValues,function(i,temp)
						{
							$.each(rows,function(k,row)
							{
								if(rows[k].AIRPORT_PR==temp){
									$('#stationTable').datagrid("selectRow",k);
								}else if(rows[k].SELECTED==0){
									$('#stationTable').datagrid("selectRow",k);
								}
							});
						});
					},onSelect:function(rowIndex,rowData)
					{
						var rows=$('#stationTable').datagrid("getSelections");
						var datas=new Array();
						$('#selections').val("");
						$.each(rows,function(i,row)
						{//设置查询参数
							datas.push(row.AIRPORT_PR);
						});
						$('#selections').val(datas);
					},onUnselect:function(rowIndex,rowData)
					{
						var rows=$('#stationTable').datagrid("getSelections");
						var datas=new Array();
						$('#selections').val("");
						$.each(rows,function(i,row)
						{//设置查询参数
							datas.push(row.AIRPORT_PR);
						});
						$('#selections').val(datas);
					}});
				}else if('AIRPORT_REG'==stationType){
					$('#stationTable').datagrid({title:'区域列表', //标题
					method:'post',iconCls:'icon-edit', //图标
					singleSelect:false, //多选
					fitColumns:true, //自动调整各列，用了这个属性，下面各列的宽度值就只是一个比例。
					striped:true, //奇偶行颜色不同
					collapsible:true,//可折叠
					url:"${ctx}/oi4airport/getStationByUserId.adm?stationType=AIRPORT_REG",sortName:'AIRPORT_REG', //默认排序的列
					sortOrder:'desc', //默认排序方式-倒序
					remoteSort:true, //服务器端排序
					height:260,loadMsg:'处理中...',queryParams:{},pagination:false, //显示分页
					rownumbers:true, //显示行号
					columns:[
						[
							{field:'AIRPORT_REG',title:'区域',width:25}
						]
					],onLoadSuccess:function()
					{
						var rows=$('#stationTable').datagrid("getRows");
						var stationValues=$('#station_values').val().split(',');
						$.each(stationValues,function(i,temp)
						{
							$.each(rows,function(k,row)
							{
								if(rows[k].AIRPORT_REG==temp){
									$('#stationTable').datagrid("selectRow",k);
								}else if(rows[k].SELECTED==0){
									$('#stationTable').datagrid("selectRow",k);
								}
							});
						});
					},onSelect:function(rowIndex,rowData)
					{
						var rows=$('#stationTable').datagrid("getSelections");
						var datas=new Array();
						$('#selections').val("");
						$.each(rows,function(i,row)
						{//设置查询参数
							datas.push(row.AIRPORT_REG);
						});
						$('#selections').val(datas);
					},onUnselect:function(rowIndex,rowData)
					{
						var rows=$('#stationTable').datagrid("getSelections");
						var datas=new Array();
						$('#selections').val("");
						$.each(rows,function(i,row)
						{//设置查询参数
							datas.push(row.AIRPORT_REG);
						});
						$('#selections').val(datas);
					}});
				}//MyPopWindow：判断是显示航站/省份/区域列表结束
			}//MyPopWindow：onload方法结束
			});//MyPopWindow弹出框结束
		}//else判断结束（是否该显示popup-customStation，还是弹出MyPopWindow多选航站/省份/区域）
	}

	//theAirportSelect.jsp里需要的模糊查询方法
	function stationSearch(value,name)
	{
		var params={};
		params['keyValue']=value;
		var rows=$('#stationTable').datagrid('getSelections');
		params['selections']=JSON.stringify(rows);
		$('#stationTable').datagrid('reload',params); //设置好查询参数 reload 一下就可以了
	};
	
	//theAirportSelect.jsp提交多选的航站/省份/区域的方法
	function stationSelect()
	{
		var datas=$('#selections').val();
		$('#station_values').val(datas);
		$("#MyPopWindow").window("close");
	};
	
	function getSelectedCheckbox(divId)
	{
		var arr_v=new Array();
		$("#"+divId+" :checkbox").each(function()
		{
			var atr=$(this).attr("checked");
			if(atr=='checked'&&atr!=''&&atr!=null){
				arr_v.push($(this).attr("value"));
			}
		});
		return arr_v
	}

	function openCity(year,station,station2,value)
	{
		parent.params_station['querys']['year']=year;
		parent.params_station['querys']['station']=station;
		parent.params_station['querys']['station2']=station2;
		parent.params_station['querys']['province']=value;
		var content='<iframe scrolling="auto" frameborder="0" src="/SKYWORTH_V3/pages/market/market_station_city.jsp" style="width:100%;height:100%;"></frame>';
		parent.$('#tabRegion').tabs('add',{title:year+'['+station+'-'+station2+']'+value,content:content,closable:true});
	}
</script>
</head>

<body style="margin-top: 3px;">
	<div class="easyui-panel" id="searchPanelId" title="市场营销模块-按航站查询" data-options="collapsible:true" style="background-color: white;">
		<div class="outter">
			<div id="outter-search">
				<table id="table-search">
					<tr>
						<td class="td1">
							<div class="col col1">
								<form>
									<div class="outter-year">
										<span style="line-height: 1.5em; text-shadow: 1px 1px 4px #C0C0C0;">查询时间: </span>
										<input id="year" name="dept" style="width: 150px;" />
									</div>
									<div class="col col2">
										<div id="selectTime" class="easyui-tabs" style="width: 300px; height: 106px;">
											<div title="全年<lable hidden='true'>year</lable>" data-options="closable:false" style="overflow: auto; padding: 10px;">
												<input type="checkbox" checked='checked' class="firstDimension" value="1" /> <label>全年</label>&nbsp;&nbsp;&nbsp;
											</div>
											<div title="半年<lable hidden='true'>halfYear</lable>" style="padding: 10px;">
												<input type="checkbox" class="firstDimension" value="1" /> <label>上半年</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" value="2" /> <label>下半年</label>&nbsp;&nbsp;&nbsp;
											</div>
											<div title="季度<lable hidden='true'>QU</lable>" class="firstDimension" data-options="closable:false" style="overflow: auto; padding: 10px;">
												<input type="checkbox" class="firstDimension" value='1' /> <label>一季度</label>&nbsp;
												<input type="checkbox" value='2' /> <label>二季度</label>&nbsp;
												<input type="checkbox" value='3' /> <label>三季度</label>&nbsp;
												<input type="checkbox" value='4' /> <label>四季度</label>&nbsp;
											</div>
											<div title="航季<lable hidden='true'>fltQu</lable>" style="padding: 10px;">
												<input type="checkbox" class="firstDimension" value="1" /> <label>冬春航季</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" value="2" /> <label>夏秋航季</label>&nbsp;&nbsp;&nbsp;
											</div>
											<div title="月份<lable hidden='true'>month</lable>" style="padding: 10px;">
												<input type="checkbox" class="firstDimension" value="1" /> <label>一月</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" value="2" /> <label>二月</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" value="3" /> <label>三月</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" value="4" /> <label>四月</label><br />
												<input type="checkbox" value="5" /> <label>五月</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" value="6" /> <label>六月</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" value="7" /> <label>七月</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" value="8" /> <label>八月</label><br />
												<input type="checkbox" value="9" /> <label>九月</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" value="10" /> <label>十月</label>&nbsp;&nbsp;&nbsp;
												<input type="checkbox" value="11" /> <label>十一月</label>
												<input type="checkbox" value="12" /> <label>十二月</label>
											</div>
											<div title="天<lable hidden='true'>day</lable>" style="padding: 10px;">
												日期：<input type="text" style="width: 150px;" name="date1" onclick="WdatePicker({dateFmt:'MM/dd',isShowWeek:true,isShowCus:true})" readonly="readonly"  />
											</div>
										</div>
									</div>
									<input type="hidden" id='dtType' name="dtType" value="year" />
									<div class="outter-week" style="margin-top: 6px;">
										<span style="line-height: 1.5em; text-shadow: 1px 1px 4px #C0C0C0;">选择星期: </span>
										<input id="week" name="week" style="width: 150px;" />
									</div>
								</form>
							</div>
						</td>
						<td class="td2">
							<div class="col col2">
								<h3>选择航站:</h3>
								<div class="dropIpt" id="dropIpt-station">
									<select title="station-select" id="station_type" style="width: 80px;">
										<option value="AIRPORT_CD">航站</option>
										<option value="AIRPORT_PR">省份</option>
										<option value="AIRPORT_REG">区域</option>
										<option value="custom-group">自定义组</option>
									</select>
									<input type="text" class="station-ipt" id="station_values"  readonly="readonly"  placeholder="点击弹出选择框" />
								</div>
								<div id="tab_airport_type" class="easyui-tabs" style="width: 300px; height: 85px;">
									<div title="进出港" id="airline_Id" style="padding: 10px;">
										包括：
										<input type="checkbox" value="GN" checked="checked" style="margin-left: 10px;" />
										<label>国内航线</label>
										<input type="checkbox" value="GJ" checked="checked" style="margin-left: 1px;" />
										<label>国际航线</label>
										<input type="checkbox" value="DQ" checked="checked" style="margin-left: 1px;" />
										<label>地区航线</label>
									</div>
									<div title="往返地" id="dpt-station" data-options="closable:false" style="overflow: auto; padding: 10px;">
										往返级别：
										<select title="station-select" name="station-select" id="dpt-select" style="margin-left: 10px; width: 80px;">
											<option value="AIRPORT_CD">航站</option>
											<option value="AIRPORT_PR">省份</option>
											<option value="AIRPORT_REG">区域</option>
										</select>
									</div>
								</div>
								<input type="hidden" id="airportType" value="1" />
							</div>
						</td>
						<td class="td3">
							<div class="col col3">
								<div class="parameter" id="parameterTarget" style="margin-top: 10px;">
									<div style="margin-top: 10px;">
										<input type="checkbox" checked="checked" id="ages" value="ages" /> <label for="ages">年龄段</label>&nbsp;&nbsp;&nbsp;
										<input type="checkbox" id="price" value="price" /> <label for="price">票价水平</label>
										<input type="checkbox" id="issuedt" value="issuedt" /> <label for="issuedt">购票时间</label>
									</div>
									<div style="margin-top: 10px;">
										<input type="checkbox" id="hometown" value="hometown" /> <label for="hometown">籍贯分布</label>
										<input type="checkbox" id="groups" value="groups" /> <label for="groups">团队人数</label>
										<input type="checkbox" id="sex" value="sex" /> <label for="sex">性别</label>
									</div>
									<div style="margin-top: 10px;">
										<input type="checkbox" id="flttime" value="flttime" /> <label for="flttime">航班时刻</label>
										<input type="checkbox" id="peers" value="peers" /> <label for="peers">同行人数</label>
									</div>
								</div>
							</div>
						</td>
						<td class="td4">
							<div class="col col4">
								<button id="btn-inquiry" class="easyui-linkbutton" iconCls="icon-search" style="width: 90px; margin-top: 6px;">查询</button>
								<a href="#" class="a-export" onclick="exportExcel()" style="margin-top: 6px;">导出为Excel</a> <a href="#" onclick="showAttention('marketStation')" style="margin-top: 6px; color: red;">使用说明</a>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<div class="griddiv nottreegr">
		<div>
			<table id="totalGrid"></table>
			<table id="detailGrid"></table>
		</div>
	</div>
	<div class="popup" id="customStation" style="position: absolute; z-index: 10; display: none">
		<div class="popup-inner">
			<ul id="stationUl"></ul>
		</div>
	</div>

	<div id="MyPopWindow" modal="true" shadow="false" minimizable="false" cache="false" maximizable="false" collapsible="false" resizable="false" style="margin: 0px; padding: 0px; overflow: auto;"></div>

	<div id="AttentionWindow" modal="true" shadow="false" minimizable="false" cache="false" maximizable="false" collapsible="false" resizable="false" style="margin: 0px; padding: 0px; overflow: auto;"></div>

	<form id="excelExport" action="${ctx}/marketoi4airport/exportToExcel.adm" method="post">
		<input type="hidden" id="flags" name='flags' />
		<input type="hidden" id="querys" name='querys' />
	</form>


	<div id="mapContainer_d" style="margin-bottom:20px;">
		
		<div id="mapContainer_d_seacher" class="easyui-panel"  title="查询条件" data-options="collapsible:true" style="background-color: white;padding-top:20px;padding:20px;">
			<select id="seachSeclect"  style="width:150px；margin:20px">
			</select>
			<select id="seachSelData" style="width:150px；margin:20px">
			</select>
			<div id="sp">
				<div class="title_1" style="color:#99BBE8;background:#fafafa;padding:5px;">Select a language</div>
				<div class="cont_1" style="padding-top:2 0 2 0">
					<input type="radio" name="lang" value="03"/><span>Ruby</span><br/>
					<input type="radio" name="lang" value="04"/><span>Basic</span><br/>
					<input type="radio" name="lang" value="05"/><span>Fortran</span>
				</div>
			</div>
			
			<div id="sp01">
				<div class="title_1" style="color:#99BBE8;background:#fafafa;padding:5px;">Select a language</div>
				<div class="cont_1" style="padding-top:2 0 2 0">
					<input type="radio" name="lang" value="03"/><span>Ruby</span><br/>
					<input type="radio" name="lang" value="04"/><span>Basic</span><br/>
					<input type="radio" name="lang" value="05"/><span>Fortran</span>
				</div>
			</div>
			<button id="btn-inquiry_map_open" class="easyui-linkbutton" iconCls="icon-search" style="width: 80px;">确定</button>
		</div>
		<div id="main" style="height:600px"></div>
	</div>
</body>
	<script type="text/javascript">
		$(function(){
			 $('#seachSeclect').combo({
				 required:true,
				 editable:false,
				 width:'150px'
			});
			 
			 $('#seachSelData').combo({
				 required:true,
				 editable:false,
				 width:'150px'
			});
			 
			$("#btn-inquiry_map_open").click(function(){
				showMap();
			});
		});
	
		function step1(){
			var htmlTxt='<input type="radio" name="lang" value="CTU-PEK"><span>CTU</span><br/>';
				htmlTxt+='<input type="radio" name="lang" value="KWE-CTU"><span>KWE</span><br/>';
			 $('#sp div.title_1').html("选择航站");
			 $('#sp div.cont_1').html(htmlTxt);
			 $('#seachSeclect').combo('reset');
			 $('#sp').appendTo($('#seachSeclect').combo('panel'));
			 $('#seachSeclect').combo('setValue', '').combo('setText', '')
			 $('#sp input').click(function(){
				 var v = $(this).val();
				 var s = $(this).next('span').text();
				 $('#seachSeclect').combo('setValue', v).combo('setText', s).combo('hidePanel');
			 });
		}
		function step2(){
			var htmlTxt='<input type="radio" name="lang" value="上半年"><span>上半年</span><br/>';
				htmlTxt+='<input type="radio" name="lang" value="下半年"><span>下半年</span><br/>';
				htmlTxt+='<input type="radio" name="lang" value="下半年"><span>全部</span><br/>';
			 $('#sp01 div.title_1').html("选择时间");
			 $('#sp01 div.cont_1').html(htmlTxt);
			 $('#seachSelData').combo('reset');
			 $('#sp01').appendTo($('#seachSelData').combo('panel'));
			 $('#seachSelData').combo('setValue', '').combo('setText', '')
			 $('#sp01 input').click(function(){
				 var v = $(this).val();
				 var s = $(this).next('span').text();
				 $('#seachSelData').combo('setValue', v).combo('setText', s).combo('hidePanel');
				 
				// $('#seachSelData').combo('getValue');
			 });
		}
	</script>
	<script src="${ctx}/js/echarts-2.0.2/doc/example/www/js/esl.js"></script>
	<script type="text/javascript" >
	 	var myChart=null,myopts=null,ecConfig =null,cutheme=null,zrEvent=null,chinageo=null;
	 	var curIndx = 0;
	 	var mapType = [
	 	    'china',
	 	    // 23个省
	 	    '广东', '青海', '四川', '海南', '陕西', 
	 	    '甘肃', '云南', '湖南', '湖北', '黑龙江',
	 	    '贵州', '山东', '江西', '河南', '河北',
	 	    '山西', '安徽', '福建', '浙江', '江苏', 
	 	    '吉林', '辽宁', '台湾',
	 	    // 5个自治区
	 	    '新疆', '广西', '宁夏', '内蒙古', '西藏', 
	 	    // 4个直辖市
	 	    '北京', '天津', '上海', '重庆',
	 	    // 2个特别行政区
	 	    '香港', '澳门'
	 	];
	 	
	 	function loadMapJs(){
	 		 require(
			     [
			         'echarts',
			         'echarts/theme/default',
			         'echarts/ecConfig',
			         'echarts/zrEvent',
			         'echarts/chart/map',
			     ],
			     function (ec,theme,conf,zevent/*,cgeo*/) {
			        myChart = ec.init(document.getElementById('main'));
			        cutheme=theme;  
			    	ecConfig=conf;
			    	zrEvent=zevent;
			    	showMap();
			     }
			 );
	 	}
		 require.config({
		     paths:{ 
		         'echarts':'${ctx}/js/echarts-2.0.2/doc/example/www/js/echarts',
		         'echarts/ecConfig':'${ctx}/js/echarts-2.0.2/src/config',
		         'echarts/zrEvent':'${ctx}/js/zrender-2.0.2/src/tool/event',
		         'echarts/chart/map' : '${ctx}/js/echarts-2.0.2/doc/example/www/js/echarts-map',
		         'echarts/theme/default' : '${ctx}/js/echarts-2.0.2/doc/example/theme/blue',
		     }
		 });
		
		 
	</script>
 	<script type="text/javascript" >
 		var mt='china';
		function initSeachMap(){
			step1();
			step2();
			$("div.griddiv").hide()
			$("#mapContainer_d").show();
			$("#main").hide();
		}
		
		
		function showMap(){
			$("div.griddiv").hide()
			$("#main").show();
			mt='china';
			if(myChart==null){
				loadMapJs();
				return;
			}
			
			 myChart.showLoading({text: '正在努力的读取数据中...'});
			 myChart.setTheme(cutheme);
			 myopts = {
				    title: {
				        text : '全国34个省市自治区',
				        subtext : 'china'
				    },
				    tooltip : {
				        trigger: 'item',
				        formatter: '滚轮切换或点击进入该省<br/>总数：100人<br/>航空公司航线明细<br/>CA 50人<br/>3U 50人'
				    },
				    legend: {
				        orient: 'vertical',
				        x:'right',
				        data:['籍贯分布']
				    },
				    dataRange: {
				        min: 0,
				        max: 1000,
				        color:['orange','yellow'],
				        text:['高','低'],           // 文本，默认为数值文本
				        calculable : true
				    },
				    series : [
				        {
				            name: '随机数据',
				            type: 'map',
				            mapType: 'china',
				            selectedMode : 'single',
				            itemStyle:{
				                normal:{label:{show:true}},
				                emphasis:{label:{show:true,formatter:'{b}'}}
				            },
				            data:mydata
				        }
				    ]
				};
			 
			 myChart.un(ecConfig.EVENT.CLICK, eConsole)
			 myChart.on(ecConfig.EVENT.CLICK, eConsole);
			 
			 setTimeout(showmm, 500);
		}
		function showmm(){
			 myChart.hideLoading();
			 myChart.setOption(myopts)
		}
		
		
		function eConsole(param){
			  //var len = mapType.length;
			  var nowSelDataV=$('#seachSelData').combo('getValue');
			  var nowSelDataT=$('#seachSelData').combo('getText');
			
			  var nowSeachSeclectV=$('#seachSeclect').combo('getValue');
			  var nowSeachSeclectT=$('#seachSeclect').combo('getText');
			  
			
			  
			    if (mt == 'china') {
			        // 全国选择时指定到选中的省份
			        mt=param.name;
			        
			        //myopts.tooltip.formatter = '点击进入该省<br/>总数：200人<br/>航空公司航线明细<br/>CA 50人<br/>3U 50人<br/>HU 100人';
			    }
			    else {
			        mt = 'china';
			        //myopts.tooltip.formatter = '点击进入该省<br/>总数：200人<br/>航空公司航线明细<br/>CA 50人<br/>3U 50人<br/>HU 100人';
			    }
			  //异步返回数据，在这里添加ajax的操作 可以直接调用function ajaxpost(url,da,callback)这个接口进行ajax的操作
			    var txt='<table>';
	      		txt+='<tr>';
	      			txt+='<td>tttttt1</td>';
	      			txt+='<td>tttttt2</td>';
	      			txt+='<td>tttttt3</td>';
	      			txt+='<td>tttttt3</td>';
	      			txt+='<td style="color:red;">tttttt3</td>';
	      			txt+='<td>tttttt3</td>';
	      		txt+='</tr>';
	      		txt+='<tr>';
	      			txt+='<td>vvvvvv1</td>';
	      			txt+='<td>vvvvvv2</td>';
	      			txt+='<td>vvvvvv3</td>';
	      			txt+='<td>vvvvvv3</td>';
	      			txt+='<td>vvvvvv3</td>';
	      			txt+='<td>vvvvvv3</td>';
	      		txt+='</tr>';
	      	txt+='</table>';
			  
			    myopts.tooltip.formatter= function (params,ticket,callback) {
		            var res = 'Function formatter : <br/>' + params[1];
		            res+=res+"<br/>"+txt;
		            //然后再这里面请求ajax
		            setTimeout(function (){
		                // ajax请求数据完成后，调用该方法
		                callback(ticket, res);
		            }, 1000)
		            return 'loading';
		        }
			    myopts.series[0].mapType = mt;
			    myopts.title.subtext = mt;
			    myChart.setOption(myopts, true);
		}
</script>

<script type="text/javascript">
	$(function()
	{
		var checkboxs=$("div#parameterTarget div input[type=checkbox]");
		function changeCheckBoxStationFalse(checkboxss)
		{
			for(var i=0;i<checkboxss.length;i++){
				checkboxss[i].checked=false;
			}
		}
		$("div#parameterTarget div input[type=checkbox]").click(function()
		{
			if($(this)[0].checked){
				changeCheckBoxStationFalse(checkboxs);
				$(this)[0].checked=true;
			}
			
		});
	});
</script>
</html>
