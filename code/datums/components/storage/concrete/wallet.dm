/* // [CELADON-REMOVE] - DONT_ALTCLICK_WALLET - Где карта? Нам нужна карта
// /datum/component/storage/concrete/wallet/on_alt_click_async(datum/source, mob/user)		// [CELADON-ALERT] - Выпилено с ПКМ
/datum/component/storage/concrete/wallet/open_storage(mob/user)		// [CELADON-ALERT] - Добавлено с ПКМ
	if(!isliving(user) || !user.CanReach(parent) || user.incapacitated())
		return FALSE
	if(locked)
		to_chat(user, span_warning("[parent] seems to be locked!"))
		return
	var/obj/item/storage/wallet/A = parent
	if(istype(A) && A.front_id && !issilicon(user) && !(A.item_flags & IN_STORAGE)) //if it's a wallet in storage seeing the full inventory is more useful
		var/obj/item/I = A.front_id
	// 	A.add_fingerprint(user)		// [CELADON-ALERT] - Выпилено с ПКМ
	// 	remove_from_storage(I, get_turf(user))
	// 	if(!user.put_in_hands(I))
	// 		to_chat(user, span_notice("You fumble for [I] and it falls on the floor."))
	// 		return
	// 	user.visible_message(span_warning("[user] draws [I] from [parent]!"), span_notice("You draw [I] from [parent]."))
	// 	return
	// ..()
		INVOKE_ASYNC(src, PROC_REF(attempt_put_in_hands), I, user)		// [CELADON-ALERT] - Добавлено с ПКМ
		return TRUE
	return ..()
*/ // [/CELADON-REMOVE]
