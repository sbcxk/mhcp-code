
export default (url, method, params) => {
	uni.showLoading({
		title: "加载中"
	});
	
	return new Promise((resolve, reject) => {
		uni.request({
			url:  "http://localhost:9002"+ url,
			method: method,
			header: {
				"content-type": "application/x-www-form-urlencoded"
			},
			data: params,
			withCredentials:true,
			success(res) {
				if (res.data.code == 500) {
					uni.showToast({
						title: res.data.msg,
						icon: "none"
					})
				} else if (res.data.code == 407) {
					uni.showToast({
						title: res.data.msg,
						icon: "none"
					})
					uni.redirectTo({
						url:"/pages/index/index"
					})
					uni.removeStorageSync("user");
					

				} else if (res.data.code == 404 || res.data.code == 403) {
					uni.showToast({
						title: res.data.msg,
						icon: "none"
					})
					
				} else {
					resolve(res);
				}

			},
			fail(err) {
				uni.hideLoading();
				uni.showToast({
					title: "操作失败,错误："+err,
					icon: "error"
				})
			},
			complete(res) {
				resolve(res);
				uni.stopPullDownRefresh()
				uni.hideLoading();
			}
		});
	});
};
