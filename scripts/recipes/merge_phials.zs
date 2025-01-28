import crafttweaker.api.item.IItemStack;

// given two full phials, return an empty phial with their combined capacity if it's less than Media.MAX
public function mergePhials(inputs as IItemStack[]) as IItemStack? {
    val newStartMedia = inputs[0].startMedia + inputs[1].startMedia;
    return newStartMedia <= Media.MAX ? inputs[0].withMedia(newStartMedia as int, 0) : null;
}

// given two phials, return two phials with the average of their capacity
// use .media just in case the phials aren't full, though they should always be
public function balancePhials(inputs as IItemStack[]) as IItemStack {
    val newMedia = (inputs[0].media + inputs[1].media) / 2;
    return IItemStack.phialWithMedia(newMedia as int) * 2;
}

val phialInput = IItemStack.phialWithMedia(Media.dust(64)) | <item:hexcasting:battery>.onlyIfMediaFull();
craftingTable.addShapeless(
    "hexxycraft/merge_phials",
    IItemStack.phialWithMedia(Media.dust(128), 0),
    [phialInput, phialInput],
    (usualOut as IItemStack, inputs as IItemStack[]) => mergePhials(inputs) ?? balancePhials(inputs)
);
