import crafttweaker.api.data.IData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IngredientConditioned;
import crafttweaker.api.item.IItemStack;

// helpers to convert from ingame units to integer media
public class Media {
    public static val MAX = dust(200000) as long;

    public static dust(numDust as int) as int => numDust * 10000;
    public static shard(numShards as int) as int => 5 * dust(numShards);
    public static crystal(numCrystals as int) as int => 10 * dust(numCrystals);
}

// asInt that handles if the IData is null
public expand IData {
    public tryAsInt() as int => (this as IData?) != null ? asInt() : 0;
}

// phial media helpers
// these will probably break horribly if you try to use them on anything other than <item:hexcasting:battery>
// so, uh, don't
public expand IItemStack {
    static val START_MEDIA_KEY = "hexcasting:start_media";
    static val MEDIA_KEY = "hexcasting:media";

    public get startMedia as long => tag[START_MEDIA_KEY].tryAsInt();
    public get media as long => tag[MEDIA_KEY].tryAsInt();
    public get isMediaFull as bool => startMedia == media;

    // returns a new phial IItemStack with the given size and amount of media 
    public static phialWithMedia(newMedia as int) as IItemStack => phialWithMedia(newMedia, newMedia);
    public static phialWithMedia(newStartMedia as int, newMedia as int) as IItemStack {
        return <item:hexcasting:battery>.withMedia(newStartMedia, newMedia);
    }
    
    public static lampWithMedia(newMedia as int) as IItemStack => lampWithMedia(newMedia, newMedia);
    public static lampWithMedia(newStartMedia as int, newMedia as int) as IItemStack {
        return <item:hexical:arch_lamp>.withMedia(newStartMedia, newMedia);
    }
    

    // sets the media for this phial
    // as withTag, returns this item if mutable or a new one otherwise
    public withMedia(newMedia as int) as IItemStack => withMedia(newMedia, newMedia);
    public withMedia(newStartMedia as int, newMedia as int) as IItemStack {
        val newTag = getOrCreateTag();
        newTag[START_MEDIA_KEY] = newStartMedia;
        newTag[MEDIA_KEY] = newMedia;
        return withTag(newTag);
    }

    // ingredient condition that only accepts full phials
    public onlyIfMediaFull() as IngredientConditioned<IIngredient> {
        return this.onlyIf("hexxycraft/phial_is_full", (phial) => phial.isMediaFull);
    }
}
