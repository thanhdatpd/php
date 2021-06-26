let arr = [2, 5, 1, 7, 6, 9, 8]

for (let i = 0; i < arr.length - 1; i++) {
    for (let j = i + 1; j < arr.length; j++) {
        if (arr[j] < arr[i]) {
            let temp = arr[j]
            arr[j] = arr[i]
            arr[i] = temp
        }
    }
}

console.log(arr);